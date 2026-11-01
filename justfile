# Lunchbox Hub 本地开发命令入口 (Lean CLI Dispatcher)

# 默认列出所有指令
default:
    @just --list

# ------------------------------------------------------------------------------
# 1. 环境与依赖 (Setup & Dependencies)
# ------------------------------------------------------------------------------

# 一键准备开发环境（拉取依赖并生成代码）
prepare:
    ./scripts/manage.sh prepare

# 获取项目依赖
deps:
    flutter pub get --no-example

# 升级依赖包（可传包名或参数，如: just upgrade dio）
upgrade *args:
    flutter pub upgrade {{ args }}

# 升级到约束允许的最新版，并把 pubspec 下界提到实际解析版本
upgrade-tighten:
    flutter pub upgrade --tighten

# 跨大版本升级并改写 pubspec；跑完须把 build_runner 改回 ">=2.16.2 <2.17.0"
upgrade-major:
    flutter pub upgrade --major-versions

# 检查可升级的过期依赖
outdated:
    flutter pub outdated

# ------------------------------------------------------------------------------
# 2. 代码生成与清理 (Codegen & Cleanup)
# ------------------------------------------------------------------------------

# 执行全量代码生成（build_runner + slang 国际化）
build:
    ./scripts/manage.sh build

# 监听代码生成（开发热更新）
watch:
    ./scripts/manage.sh watch

# 清理构建缓存与生成文件
clean:
    ./scripts/manage.sh clean

# ------------------------------------------------------------------------------
# 3. 运行与测试 (Run & Test)
# ------------------------------------------------------------------------------

# 启动 Flutter 应用（支持参数透传，如: just run -d chrome）
run *args:
    flutter run {{ args }}

# 运行自动化测试（支持参数透传，如: just test test/widget_test.dart）
test *args:
    flutter test {{ args }}

# ------------------------------------------------------------------------------
# 4. 代码质量与门禁 (Lint, Format & Ready)
# ------------------------------------------------------------------------------

# 静态代码分析
analyze:
    ./scripts/manage.sh analyze

alias lint := analyze

# 代码格式化（自动排除生成文件）
format:
    ./scripts/manage.sh format

# 自动修复常见代码问题
fix:
    ./scripts/manage.sh fix

# 提交前一键就绪验证（format + fix + analyze）
ready:
    ./scripts/manage.sh ready

alias check := ready

# ------------------------------------------------------------------------------
# 5. 构建与部署 (Build & Install)
# ------------------------------------------------------------------------------

# 构建 Android APK/AAB，mode 可选：all(默认)/google/fat/split
apk mode="all":
    ./scripts/manage.sh build:apk {{ mode }}

# 构建 iOS IPA 包
ios:
    ./scripts/manage.sh build:ios

# 安装应用到设备（默认 debug，可选: just install release）
install mode="debug":
    ./scripts/manage.sh install {{ mode }}

# ------------------------------------------------------------------------------
# 6. 发布签名 (Release Signing)
# ------------------------------------------------------------------------------

# 生成 release keystore（仅首次执行；生成后离线备份，并填好 android/key.properties）
signing-key alias="upload":
    keytool -genkeypair -v -keystore android/app/upload-keystore.jks \
        -alias {{ alias }} -keyalg RSA -keysize 2048 -validity 10000

# 输出 keystore 的 base64，粘贴到 GitHub Secret KEYSTORE_BASE64
signing-base64:
    base64 -i android/app/upload-keystore.jks

# 校验已构建 APK 的签名者
signing-verify:
    #!/usr/bin/env bash
    set -euo pipefail
    signer=$(find "${ANDROID_HOME:-$HOME/Library/Android/sdk}/build-tools" -maxdepth 2 -name apksigner -type f | sort -V | tail -1)
    for apk in build/app/outputs/flutter-apk/lunchbox_*.apk; do
      echo "== $apk"
      "$signer" verify --print-certs "$apk" | head -2
    done
