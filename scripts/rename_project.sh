#!/bin/bash

# ================================================================================
# Script: rename_project.sh
# Description: Rename Flutter project (updates imports)
#
# 脚本支持 2 种模式：
# 1. 0 个参数: ./scripts/rename_project.sh
#    它会读取 pubspec.yaml 里的当前 name 作为新名字，并从代码中的旧 package imports 推断旧名字。
# 2. 1 个参数: ./scripts/rename_project.sh <新名字>
#    它会先把 pubspec.yaml 中的 name 替换成新名字，然后更新代码里的 package imports。
# ================================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if [ -f "$SCRIPT_DIR/utils.sh" ]; then
    # shellcheck source=./utils.sh
    source "$SCRIPT_DIR/utils.sh"
elif [ -f "$PROJECT_ROOT/scripts/utils.sh" ]; then
    # shellcheck source=./utils.sh
    source "$PROJECT_ROOT/scripts/utils.sh"
else
    echo "Error: utils.sh not found."
    exit 1
fi

cd "$PROJECT_ROOT"

get_pubspec_name() {
    if [ ! -f "pubspec.yaml" ]; then
        log_error "pubspec.yaml not found. Please run this script in the Flutter project root."
        exit 1
    fi

    local project_name
    # rg 推导 capture group，直接提取名字
    project_name=$(rg -N '^name: (.+)' pubspec.yaml -r '$1' | head -1)

    if [ -z "$project_name" ]; then
        log_error "Could not read project name from pubspec.yaml."
        exit 1
    fi

    printf '%s\n' "$project_name"
}

get_pubspec_dependencies() {
    rg -N -o '^  ([a-zA-Z0-9_]+):' pubspec.yaml -r '$1'
}

for_each_dart_file() {
    local dir="$1"
    [ -d "$dir" ] || return 0

    fd -t f -e dart "$dir" --print0
}

infer_old_name() {
    local new_name="$1"
    local dependencies
    dependencies=$(get_pubspec_dependencies)

    for search_dir in lib test; do
        while IFS= read -r -d '' dart_file; do
            local package_names
            package_names=$(rg -oh 'package:[a-zA-Z0-9_]+' "$dart_file" 2> /dev/null | awk -F ':' '{print $2}' | sort | uniq)

            for package_name in $package_names; do
                if ! echo "$dependencies" | rg -q -w "$package_name" &&
                    [ "$package_name" != "flutter" ] &&
                    [ "$package_name" != "$new_name" ]; then
                    printf '%s\n' "$package_name"
                    return 0
                fi
            done
        done < <(for_each_dart_file "$search_dir")
    done

    return 1
}

replace_imports_in_dir() {
    local dir="$1"
    local old_name="$2"
    local new_name="$3"

    # sd 支持原地替换，-p flag 为预览（不加 -p 即原地修改）
    while IFS= read -r -d '' dart_file; do
        sd "package:${old_name}/" "package:${new_name}/" "$dart_file"
    done < <(for_each_dart_file "$dir")
}

PUBSPEC_NAME=$(get_pubspec_name)

if [ "$#" -eq 0 ]; then
    NEW_NAME=$PUBSPEC_NAME
    OLD_NAME=$(infer_old_name "$NEW_NAME" || true)
    if [ -z "$OLD_NAME" ]; then
        log_info "No rename needed: project is already using '$NEW_NAME' consistently."
        exit 0
    fi
elif [ "$#" -eq 1 ]; then
    OLD_NAME=$PUBSPEC_NAME
    NEW_NAME=$1
else
    log_error "Too many arguments."
    echo "Usage: $0 [new_name]"
    exit 1
fi

if [ -z "$OLD_NAME" ] || [ -z "$NEW_NAME" ]; then
    log_error "Failed to determine old or new project name."
    exit 1
fi

if [ "$OLD_NAME" = "$NEW_NAME" ]; then
    log_info "No rename needed, project is already using '$NEW_NAME'."
    exit 0
fi

log_info "Detected old project name: '$OLD_NAME'"
log_info "Starting rename to: '$NEW_NAME'..."

log_info "Updating pubspec.yaml..."
sd "^name: $OLD_NAME" "name: $NEW_NAME" pubspec.yaml

log_info "Replacing package imports in lib/ directory..."
replace_imports_in_dir "lib" "$OLD_NAME" "$NEW_NAME"

log_info "Replacing package imports in test/ directory..."
replace_imports_in_dir "test" "$OLD_NAME" "$NEW_NAME"

log_success "Rename complete! Changed from '$OLD_NAME' to '$NEW_NAME'"
log_info "Recommended: Run 'flutter clean' and 'flutter pub get' to refresh project state."
