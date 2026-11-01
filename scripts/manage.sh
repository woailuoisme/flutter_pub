#!/bin/bash

# --- Strict Mode (Defensive Bash) ---
set -Eeuo pipefail

# Get script directory & project root
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$PROJECT_ROOT/logs"
mkdir -p "$LOG_DIR"

# Source utility script
source "$SCRIPT_DIR/utils.sh"

# Define error handling
trap 'log_error "Script failed at line $LINENO. Please check the output messages."; exit 1' ERR

# Common release build flags
RELEASE_BUILD_FLAGS=(--release --dart-define=IS_PROD=true --obfuscate --split-debug-info=build/app/outputs/symbols)

# --- Help Information ---
function show_help() {
    echo -e "${BOLD}Usage:${NC} $0 [command] [options]"
    echo ""
    echo -e "${BOLD}Development Commands:${NC}"
    echo "  prepare              Prepare development environment (deps + build)"
    echo "  deps                 Fetch project dependencies"
    echo "  build                Run code generators (build_runner + slang)"
    echo "  watch                Run build_runner in watch mode"
    echo "  clean                Clean build artifacts and generated files"
    echo "  format               Format code (excludes generated files)"
    echo "  fix                  Automatically fix code issues"
    echo "  analyze              Run static code analysis"
    echo "  analyze-strict       Strict code analysis (treats warnings/infos as failures)"
    echo "  ready                Prepare code (format + fix + analyze)"
    echo "  test                 Run tests"
    echo "  gen:icons            Generate application icons"
    echo "  gen:splash           Generate native splash screens"
    echo ""
    echo -e "${BOLD}Build & Install Commands:${NC}"
    echo "  build:apk [mode]     Build Android APK/AAB (modes: google/fat/split/all, default: all)"
    echo "  build:ios            Build iOS IPA"
    echo "  build:all            Build all Android artifacts (AAB + APK)"
    echo "  install [mode]       Install APK via adb (modes: debug/release, default: debug)"
    echo ""
    echo -e "${BOLD}Key & Signature Commands:${NC}"
    echo "  key:sha-debug        Show SHA fingerprint of debug keystore"
    echo "  key:sha-release      Show SHA fingerprint of release keystore"
    echo "  key:generate         Generate new upload-keystore.jks"
    echo ""
    echo -e "${BOLD}Shell Script Tools:${NC}"
    echo "  lint:shell           Check scripts with shellcheck"
    echo "  format:shell         Format scripts with shfmt"
    echo ""
    echo -e "${BOLD}Examples:${NC}"
    echo "  $0 prepare"
    echo "  $0 build:apk all"
    echo "  $0 install debug"
    echo "  $0 ready"
}

# --- Dependencies & Environment ---
function get_deps() {
    log_info "Fetching project dependencies..."
    flutter pub get --no-example
    log_success "Dependencies fetched successfully"
}

function cmd_prepare() {
    log_info "Preparing development environment (deps + build)..."
    get_deps
    cmd_build
    log_success "Development environment preparation completed!"
}

# --- Code Quality & Analysis ---
function cmd_analyze() {
    log_info "Running static code analysis..."
    local analyze_output
    local analyze_status

    set +e
    analyze_output="$(flutter analyze 2>&1)"
    analyze_status=$?
    set -e

    printf '%s\n' "$analyze_output" | rg -v "info \u2022" || true
    if [ "$analyze_status" -ne 0 ]; then
        log_error "Code analysis failed"
        return "$analyze_status"
    fi
    log_success "Code analysis completed"
}

function cmd_analyze_strict() {
    log_info "Running strict mode code analysis (Fatal Infos/Warnings)..."
    flutter analyze --fatal-infos --fatal-warnings
    log_success "Strict mode code analysis completed"
}

function cmd_format() {
    log_info "Formatting code (excluding generated files)..."
    fd -t f -e dart \
        -E '*.g.dart' -E '*.freezed.dart' -E '*.config.dart' -E '*.gr.dart' \
        lib test \
        -X dart format
    log_success "Code formatting completed"
}

function cmd_fix() {
    log_info "Automatically fixing code issues (excluding generated files)..."
    dart fix --apply
    log_success "Automatic code fix completed"
}

function cmd_ready() {
    log_info "Executing code preparation (format + fix + analyze)..."
    cmd_format
    cmd_fix
    cmd_analyze
    log_success "Code preparation fully completed!"
}

function cmd_test() {
    log_info "Running tests..."
    flutter test "$@"
    log_success "All tests ran successfully"
}

# --- Code Generation & Cleanup ---
function cmd_build() {
    log_info "Running code generators (build_runner + slang)..."
    dart run build_runner build --delete-conflicting-outputs
    dart run slang
    log_success "Code generation completed"
}

function cmd_watch() {
    log_info "Running build_runner in watch mode..."
    dart run build_runner watch --delete-conflicting-outputs
}

function cmd_gen_i18n() {
    log_info "Generating internationalization code..."
    dart run slang
    log_success "Internationalization code generation completed"
}

function cmd_gen_icons() {
    log_info "Generating application icons..."
    dart run flutter_launcher_icons
    log_success "Application icons generation completed"
}

function cmd_gen_splash() {
    log_info "Generating native splash screens..."
    dart run flutter_native_splash:create
    log_success "Native splash screens generation completed"
}

function cmd_clean() {
    log_info "Cleaning build artifacts and generated files..."
    dart run build_runner clean 2> /dev/null || true
    fd -t f -e g.dart -e freezed.dart lib -X rm -f 2> /dev/null || true
    flutter clean
    rm -rf .dart_tool build
    log_success "Cleaning completed"
}

# --- Android Artifact Packaging Helpers ---
function _build_aab() {
    log_info "Packaging Google Play AAB..."
    flutter build appbundle "${RELEASE_BUILD_FLAGS[@]}"
    cp build/app/outputs/bundle/release/app-release.aab "$OUTPUT_DIR/app-release.aab"
}

function _build_fat_apk() {
    log_info "Packaging Universal (Fat) APK..."
    flutter build apk "${RELEASE_BUILD_FLAGS[@]}"
    cp build/app/outputs/flutter-apk/app-release.apk "$OUTPUT_DIR/app-release.apk"
}

function _build_split_apk() {
    log_info "Packaging Split-ABI APKs..."
    flutter build apk "${RELEASE_BUILD_FLAGS[@]}" --split-per-abi
    cp build/app/outputs/flutter-apk/app-*-release.apk "$OUTPUT_DIR/" 2> /dev/null || true
}

function cmd_build_apk() {
    local MODE="${1:-all}"
    require_cmd flutter

    OUTPUT_DIR="build/outputs/release_apks"
    ensure_dir "$OUTPUT_DIR"

    cmd_prepare
    cmd_analyze

    log_info "Starting Android package build (mode: $MODE)..."
    case "$MODE" in
        google) _build_aab ;;
        fat) _build_fat_apk ;;
        split) _build_split_apk ;;
        all)
            _build_aab
            _build_fat_apk
            _build_split_apk
            ;;
        *)
            log_error "Unsupported build mode '$MODE'. Use: google, fat, split, all."
            exit 1
            ;;
    esac

    log_success "Build successful! Mode: $MODE"
    log_info "Artifacts directory: $OUTPUT_DIR"
    [[ "$OSTYPE" == "darwin"* ]] && open "$OUTPUT_DIR" 2> /dev/null || true
}

function cmd_build_all() {
    cmd_build_apk all
}

# --- iOS IPA Packaging ---
function cmd_build_ios() {
    require_cmd flutter
    log_info "Starting iOS IPA build..."

    if [[ -f "$SCRIPT_DIR/build_ios.sh" ]]; then
        "$SCRIPT_DIR/build_ios.sh"
    else
        log_warning "build_ios.sh not found, using default flutter build ipa..."
        flutter build ipa --release --obfuscate --split-debug-info=build/ios/symbols
    fi
    log_success "iOS IPA build completed"
}

# --- ADB Device Installation ---
function cmd_install() {
    local MODE="${1:-debug}"
    require_cmd adb

    local APK_PATH="build/app/outputs/flutter-apk/app-${MODE}.apk"
    if [[ ! -f "$APK_PATH" || "$MODE" == "debug" ]]; then
        log_info "Building $MODE APK..."
        if [[ "$MODE" == "release" ]]; then
            flutter build apk --release --dart-define=IS_PROD=true
        else
            flutter build apk --debug
        fi
    fi

    log_info "Installing $APK_PATH via adb..."
    local ADB_FLAGS=(-r -d -g)
    [[ "$MODE" == "debug" ]] && ADB_FLAGS+=(-t)
    adb install "${ADB_FLAGS[@]}" "$APK_PATH"
    log_success "Installation completed successfully"
}

# --- Keystore & Signature Management ---
function cmd_key_sha_debug() {
    require_cmd keytool
    local KEYSTORE="$HOME/.android/debug.keystore"
    if [[ ! -f "$KEYSTORE" ]]; then
        log_error "Debug keystore not found at $KEYSTORE"
        exit 1
    fi
    log_info "Extracting SHA fingerprint from debug keystore..."
    keytool -list -v -keystore "$KEYSTORE" -alias androiddebugkey -storepass android -keypass android
}

function cmd_key_sha_release() {
    require_cmd keytool
    local KEYSTORE_PATH="${1:-${KEYSTORE:-}}"
    if [[ -z "$KEYSTORE_PATH" ]]; then
        log_error "Keystore path not provided. Usage: $0 key:sha-release <path/to/keystore.jks> or KEYSTORE=... $0 key:sha-release"
        exit 1
    fi
    if [[ ! -f "$KEYSTORE_PATH" ]]; then
        log_error "Keystore file not found: $KEYSTORE_PATH"
        exit 1
    fi
    log_info "Extracting SHA fingerprint from $KEYSTORE_PATH..."
    keytool -list -v -keystore "$KEYSTORE_PATH"
}

function cmd_key_generate() {
    require_cmd keytool
    local TARGET_KEYSTORE="$PROJECT_ROOT/android/app/upload-keystore.jks"
    if [[ -f "$TARGET_KEYSTORE" ]]; then
        log_error "$TARGET_KEYSTORE already exists! Please backup or remove it before generating a new one."
        exit 1
    fi
    log_info "Generating new upload keystore at $TARGET_KEYSTORE..."
    keytool -genkey -v -keystore "$TARGET_KEYSTORE" \
        -keyalg RSA -keysize 2048 -validity 10000 \
        -alias upload
    log_success "Upload keystore generated at $TARGET_KEYSTORE"
    log_warning "Please backup this keystore securely! Copy android/key.properties.example to android/key.properties and configure credentials."
}

# --- Shell Script Quality Tools ---
function cmd_lint_shell() {
    require_cmd shellcheck
    log_info "Checking shell scripts with shellcheck..."
    shellcheck scripts/*.sh
    log_success "Shell scripts static check passed"
}

function cmd_format_shell() {
    require_cmd shfmt
    log_info "Formatting shell scripts with shfmt..."
    shfmt -w -i 4 -ci -sr scripts/*.sh
    log_success "Shell scripts formatting completed"
}

function cmd_run_offline() {
    local DEVICE="${1:-}"
    log_info "Running offline..."
    if [[ -n "$DEVICE" ]]; then
        flutter run --offline -d "$DEVICE"
    else
        flutter run --offline
    fi
}

# --- Main Dispatcher ---
if [ $# -eq 0 ]; then
    show_help
    exit 0
fi

COMMAND="$1"
shift

case "$COMMAND" in
    analyze) cmd_analyze ;;
    analyze-strict) cmd_analyze_strict ;;
    format) cmd_format ;;
    fix) cmd_fix ;;
    ready) cmd_ready ;;
    test) cmd_test "$@" ;;
    build) cmd_build ;;
    watch) cmd_watch ;;
    gen:i18n) cmd_gen_i18n ;;
    gen:icons) cmd_gen_icons ;;
    gen:splash) cmd_gen_splash ;;
    clean) cmd_clean ;;
    deps) get_deps ;;
    prepare) cmd_prepare ;;
    build:apk | apk) cmd_build_apk "${1:-all}" ;;
    build:ios | ios) cmd_build_ios ;;
    build:all) cmd_build_all ;;
    install) cmd_install "${1:-debug}" ;;
    key:sha-debug) cmd_key_sha_debug ;;
    key:sha-release) cmd_key_sha_release "${1:-}" ;;
    key:generate) cmd_key_generate ;;
    lint:shell) cmd_lint_shell ;;
    format:shell) cmd_format_shell ;;
    run:offline) cmd_run_offline "${1:-}" ;;
    help | --help | -h) show_help ;;
    *)
        log_error "Unknown command: $COMMAND"
        show_help
        exit 1
        ;;
esac
