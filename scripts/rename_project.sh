#!/bin/bash

# ==============================================================================
# Script: rename_project.sh
# Description: Rename Flutter project (Detects current name and updates imports)
# 
# 脚本支持 3 种模式：
# 1. 0 个参数（智能自动侦测模式）: 什么参数都不加直接跑 ./scripts/rename_project.sh
#    它会认为现在的 pubspec.yaml 里的名字就是你的新名字。
#    它会悄悄去 .dart_tool/package_config.json 里把被覆盖前的旧名字挖出来，完成代码全局替换。
# 2. 1 个参数: ./scripts/rename_project.sh <新名字>
#    它会自动读取 pubspec.yaml 作为旧名字，替换后顺带把 pubspec.yaml 也更新了（常规流程）。
# 3. 2 个参数（强制指定）: ./scripts/rename_project.sh <旧名字> <新名字>
#    强行让脚本替换一切。
# ==============================================================================

set -e

# Load helper functions (utils.sh)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -f "$SCRIPT_DIR/utils.sh" ]; then
    source "$SCRIPT_DIR/utils.sh"
else
    # Fallback path
    PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
    if [ -f "$PROJECT_ROOT/scripts/utils.sh" ]; then
        source "$PROJECT_ROOT/scripts/utils.sh"
    else
        echo "Error: utils.sh not found."
        exit 1
    fi
fi

# Ensure running in project root
cd "$PROJECT_ROOT"

# --- Auto-detect project names ---
if [ ! -f "pubspec.yaml" ]; then
    log_error "pubspec.yaml not found. Please run this script in the Flutter project root."
    exit 1
fi

# Extract current name from pubspec.yaml
PUBSPEC_NAME=$(grep '^name: ' pubspec.yaml | sed 's/^name: //')

if [ -z "$PUBSPEC_NAME" ]; then
    log_error "Could not read project name from pubspec.yaml."
    exit 1
fi

if [ "$#" -eq 0 ]; then
    # No arguments. New name is the one currently in pubspec.yaml.
    # The user likely edited pubspec.yaml manually before running this.
    NEW_NAME=$PUBSPEC_NAME
    OLD_NAME=""

    # Try to extract the PREVIOUS name from package_config.json before flutter run / pub get
    if [ -f .dart_tool/package_config.json ]; then
        OLD_NAME=$(grep -B 1 '"rootUri": "../"' .dart_tool/package_config.json | grep '"name":' | sed -E 's/.*"name": "([^"]+)".*/\1/' | head -n 1)
    fi

    # Fallback 1: If config doesn't exist, set to pubspec name
    if [ -z "$OLD_NAME" ]; then
        OLD_NAME=$PUBSPEC_NAME
    fi

    # Fallback 2: If package_config.json is ALREADY updated, OLD_NAME will equal NEW_NAME
    # In this case, we scan lib/ for leftover local package imports that aren't in pubspec dependencies
    if [ "$OLD_NAME" == "$PUBSPEC_NAME" ] && [ -d "lib" ]; then
        echo "[INFO] package_config.json matches pubspec.yaml. Scanning lib/ for leftover old imports..."
        # Get all dependencies from pubspec.yaml (lines starting with 2 spaces followed by word:)
        DEPS=$(grep -E '^  [a-zA-Z0-9_]+:' pubspec.yaml | awk '{print $1}' | tr -d ':')
        
        # Get all unique package names imported in lib/
        POTENTIAL_OLD=$(find lib -name "*.dart" -type f -exec grep -ho "package:[a-zA-Z0-9_]*" {} + 2>/dev/null | awk -F ":" '{print $2}' | sort | uniq)
        
        for pkg in $POTENTIAL_OLD; do
            # If the imported pkg is NOT in dependencies, NOT 'flutter', and NOT the NEW_NAME
            if ! echo "$DEPS" | grep -q -w "$pkg" && [ "$pkg" != "flutter" ] && [ "$pkg" != "$PUBSPEC_NAME" ]; then
                OLD_NAME="$pkg"
                echo "[INFO] Found leftover legacy import: '$OLD_NAME'"
                break
            fi
        done
    fi

elif [ "$#" -eq 1 ]; then
    # 1 argument: Assuming pubspec.yaml has NOT been edited yet.
    OLD_NAME=$PUBSPEC_NAME
    NEW_NAME=$1

elif [ "$#" -eq 2 ]; then
    # 2 arguments: old_name and new_name provided explicitly
    OLD_NAME=$1
    NEW_NAME=$2

else
    log_error "Too many arguments."
    echo "Usage: $0 [old_name] <new_name>"
    exit 1
fi

if [ -z "$OLD_NAME" ] || [ -z "$NEW_NAME" ]; then
    log_error "Failed to determine old or new project name."
    exit 1
fi

# Exit if names are the same
if [ "$OLD_NAME" == "$NEW_NAME" ]; then
    log_info "No rename needed, project is already using '$NEW_NAME'."
    exit 0
fi

log_info "Detected old project name: '$OLD_NAME'"
log_info "Starting rename to: '$NEW_NAME'..."

# 1. Update pubspec.yaml
log_info "Updating pubspec.yaml..."
sed -i '' "s/^name: $OLD_NAME/name: $NEW_NAME/" pubspec.yaml

# 2. Update imports in lib directory
if [ -d "lib" ]; then
    log_info "Replacing package imports in lib/ directory..."
    find lib -name "*.dart" -type f -print0 | xargs -0 sed -i '' "s/package:$OLD_NAME\//package:$NEW_NAME\//g"
fi

# 3. Update imports in test directory (if exists)
if [ -d "test" ]; then
    log_info "Replacing package imports in test/ directory..."
    find test -name "*.dart" -type f -print0 | xargs -0 sed -i '' "s/package:$OLD_NAME\//package:$NEW_NAME\//g"
fi

log_success "Rename complete! Changed from '$OLD_NAME' to '$NEW_NAME'"
log_info "Recommended: Run 'flutter clean' and 'flutter pub get' to refresh project state."
