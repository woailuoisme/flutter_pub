# Lunchbox Hub 本地开发命令入口

shell_files := "scripts/*.sh"
device := "ADDK6R3A12003434"

# ==============================================================================
# 1. 默认与环境准备 (Default & Environment Setup)
# ==============================================================================

default:
    @just --list

# 准备开发环境
prepare:
    ./scripts/manage.sh prepare

# 环境检查
doctor:
    flutter doctor -v

# ==============================================================================
# 2. 依赖管理 (Dependency Management)
# ==============================================================================

# 获取依赖
get:
    flutter pub get --no-example

alias deps := get

# 检查过期的依赖包
outdated:
    flutter pub outdated

# 升级依赖（在 pubspec.yaml 允许的 SemVer 范围内）
upgrade:
    flutter pub upgrade

# 升级依赖到最新大版本（会直接修改 pubspec.yaml）
upgrade-major:
    flutter pub upgrade --major-versions

# ==============================================================================
# 3. 代码生成与清理 (Code Generation & Clean)
# ==============================================================================

# 一键生成所有代码（i18n 翻译 + codegen 资源）
generate: i18n codegen

alias gen := generate

# 运行 build_runner 生成代码
codegen:
    dart run build_runner build --delete-conflicting-outputs

alias build := codegen

# 生成国际化代码
i18n:
    dart run slang

alias slang := i18n
alias gen-i18n := i18n

# 生成应用图标
icons:
    dart run flutter_launcher_icons

alias gen-icons := icons

# 生成原生启动页
splash:
    dart run flutter_native_splash:create

alias gen-splash := splash

# 监听代码生成
codegen-watch:
    dart run build_runner watch --delete-conflicting-outputs

alias watch := codegen-watch

# 监听国际化翻译文件变化并自动重新生成
i18n-watch:
    dart run slang watch

alias watch-i18n := i18n-watch

# 清理生成文件
clean:
    dart run build_runner clean
    fd -t f -e g.dart lib -X rm -f
    fd -t f -e freezed.dart lib -X rm -f

# 深度清理
clean-all: clean
    flutter clean
    rm -rf .dart_tool build

# 深度清理、拉取依赖并生成全部代码
bootstrap: clean get generate

alias full-build := bootstrap

# ==============================================================================
# 4. 运行与调试 (Run & Debug)
# ==============================================================================

# 准备开发环境并获取最新生成代码
dev: get generate

# 默认启动
run:
    flutter run

# 使用开发环境配置启动
run-dev:
    flutter run --dart-define-from-file=config/env_dev.json

# 使用生产环境配置启动
run-prod:
    flutter run --dart-define-from-file=config/env_prod.json

# 离线运行（可选指定设备）
run-offline device=device:
    flutter run --offline -d {{device}}

# 连接到已运行的应用（可选指定设备）
attach device=device:
    flutter attach -d {{device}}

# ==============================================================================
# 5. 代码检查与格式化 (Lint, Format & Fix)
# ==============================================================================

# 运行所有静态与格式化检查
lint: analyze lint-shell format-shell-check

# 自动修复所有静态检查与格式化问题
lint-fix: format-shell fix format

# Dart 静态检查
analyze:
    ./scripts/manage.sh analyze

# 严格静态检查
analyze-strict:
    ./scripts/manage.sh analyze-strict

# Shell 脚本静态检查
lint-shell:
    shellcheck {{shell_files}}

alias lintshell := lint-shell

# 检查 Shell 脚本格式
format-shell-check:
    shfmt -d -i 4 -ci -sr {{shell_files}}

alias shfmt-check := format-shell-check

# 格式化 Shell 脚本
format-shell:
    shfmt -w -i 4 -ci -sr {{shell_files}}

alias shfmt := format-shell

# 自动修复
fix:
    ./scripts/manage.sh fix

# 格式化
format:
    ./scripts/manage.sh format

# 进行代码格式化、自动修复和静态检查
verify:
    ./scripts/manage.sh ready

alias ready := verify

# ==============================================================================
# 6. 测试 (Testing)
# ==============================================================================

# 运行全部测试
test:
    flutter test

# 仅运行单元测试
test-unit:
    flutter test test/unit

# 仅运行组件测试
test-widget:
    flutter test test/widget

# ==============================================================================
# 7. 构建与安装 (Build & Deployment)
# ==============================================================================

# 发布前检查
pre-release: clean-all get generate format analyze test

# 构建 Android 包，mode 可选：google/fat/split/all
build-apk mode="all":
    ./scripts/manage.sh build:apk {{mode}}

# 仅构建 Google Play AAB
build-aab:
    ./scripts/manage.sh build:apk google

alias build-apk-google := build-aab

# 仅构建通用包 (Universal APK)
build-apk-universal:
    ./scripts/manage.sh build:apk fat

alias build-apk-fat := build-apk-universal

# 仅构建分架构 APKs
build-apk-abis:
    ./scripts/manage.sh build:apk split

alias build-apk-split := build-apk-abis

# 构建 iOS IPA 包
build-ios:
    ./scripts/manage.sh build:ios

# 构建所有 Android 包
build-all:
    ./scripts/manage.sh build:all

# 安装调试版 APK 到设备
install:
    flutter build apk --debug
    adb install -r -d -t -g build/app/outputs/flutter-apk/app-debug.apk

# 安装 release APK 到设备
install-release:
    adb install -r -d -g build/app/outputs/flutter-apk/app-release.apk

# ==============================================================================
# 8. 证书与签名 (Signature & Key Management)
# ==============================================================================

# 查看调试版 SHA 签名（Google 登录/Firebase）
key-sha-debug:
    keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

alias sha-debug := key-sha-debug

# 查看发布版 SHA 签名，可用 `KEYSTORE=... just sha-release` 或 `just sha-release path/to/key.jks`
key-sha-release keystore="":
    @KEYSTORE_PATH="{{keystore}}"; \
    if [ -z "$KEYSTORE_PATH" ]; then KEYSTORE_PATH="${KEYSTORE:-}"; fi; \
    if [ -z "$KEYSTORE_PATH" ]; then \
        echo "错误: 请提供 KEYSTORE 路径, 例如: KEYSTORE=android/app/your-key.jks just sha-release"; \
        exit 1; \
    fi; \
    keytool -list -v -keystore "$KEYSTORE_PATH"

alias sha-release := key-sha-release

# 生成新的签名文件（upload-keystore.jks）
key-generate:
    @if [ -f android/app/upload-keystore.jks ]; then \
        echo "错误: android/app/upload-keystore.jks 已存在，请手动备份或删除后再生成！"; \
        exit 1; \
    fi
    keytool -genkey -v -keystore android/app/upload-keystore.jks \
        -keyalg RSA -keysize 2048 -validity 10000 \
        -alias upload
    @echo "------------------------------------------------------------"
    @echo "成功: 签名文件已生成到 android/app/upload-keystore.jks"
    @echo "请注意: 请务必备份此文件并妥善保管密码！"
    @echo "下一步: 请复制 android/key.properties.example 为 android/key.properties 并填写正确信息"
    @echo "------------------------------------------------------------"

alias gen-key := key-generate
