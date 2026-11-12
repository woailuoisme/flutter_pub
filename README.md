# Lunchbox Hub

## 项目概述

Lunchbox Hub 是面向售货机运营管理场景的 Flutter 移动端应用，覆盖登录鉴权、库存与设备管理、维护流程、通知反馈、地图定位、数据图表与系统设置等能力。

## 项目特点

- **状态管理**：Riverpod 3 + `riverpod_generator`，编译期生成类型安全的 Provider。
- **目录结构**：Feature-First，按业务模块拆分，模块间通过 Repository 解耦。
- **实时与设备能力**：支持 WebSocket 实时通信（`web_socket_channel`）、桌面小组件（`home_widget`）与图表展示（`fl_chart`）。
- **多平台**：Android（`minSdk 26`，`compileSdk 37`）与 iOS（无签名构建）。
- **国际化**：`slang`，基于编译期生成的多语言资源。

## 技术栈

| 领域 | 依赖 |
| :-- | :-- |
| 框架 | Flutter 3.50.0，Dart SDK `^3.10.8` |
| 状态管理 | `flutter_riverpod`、`riverpod_annotation` |
| 路由 | `go_router`、`go_router_builder` |
| 网络与通信 | `dio`、`dio_http2_adapter`、`retrofit`、`connectivity_plus`、`web_socket_channel` |
| 本地存储 | `drift` + `drift_flutter`（SQLite）、`shared_preferences`、`flutter_secure_storage` |
| UI | `material_ui`、`cupertino_ui`、`flex_color_scheme`、`flutter_screenutil`、`material_symbols_icons`、`flutter_svg`、`flutter_animate`、`cached_network_image`、`skeletonizer`、`toastification`、`fl_chart`、`flutter_markdown_plus` |
| 地图与定位 | `flutter_map`、`geolocator`、`latlong2` |
| 业务与表单 | `flutter_form_builder`、`form_builder_validators`、`slang_flutter`、`webview_flutter`、`home_widget`、`upgrader` |
| 日志 | `talker_flutter`、`talker_dio_logger` |
| 代码生成 | `build_runner`、`riverpod_generator`、`retrofit_generator`、`freezed`、`json_serializable`、`drift_dev`、`envied_generator`、`go_router_builder`、`slang` |

## 环境要求

- **基础工具链**：Flutter 3.50.0、JDK 21（版本由 `.mise.toml` 固定，`mise install` 一键安装）
- **Android**：AGP 9.3.1 + Gradle 9.5.0 + KGP 2.4.20，`compileSdk 37`、`minSdk 26`
- **iOS**：Xcode + Swift Package Manager（项目不使用 CocoaPods）

## 架构设计

```text
lib/
├── core/                # 网络、错误、服务、主题、环境变量等基础设施
│   ├── env/             # envied 编译期环境变量
│   └── services/        # database / storage / api 等全局服务
├── features/            # 业务模块（agent、auth、inventory、maintenance…）
├── generated/           # 代码与资源生成产物
├── i18n/                # slang 生成的翻译
├── routes/              # go_router 路由与守卫
└── main.dart            # 入口
```

- **Repository Pattern**：隔离数据源与业务逻辑。
- **Riverpod Provider**：服务与仓库通过 Provider 注入，UI 只读状态。
- **本地数据库**：`AppDatabase`（drift，位于 `lib/core/services/app_database.dart`）由 `databaseServiceProvider` 统一管理。

## 开发命令

统一入口是 `justfile`（底层复用 `scripts/manage.sh`）。

| 命令 | 说明 |
| :-- | :-- |
| `just prepare` | 拉依赖 + 生成代码 |
| `just deps` | `flutter pub get --no-example` |
| `just upgrade [--tighten] [包名]` | 升级依赖，`--tighten` 同步 pubspec 下界 |
| `just outdated` | 查看可升级依赖 |
| `just build` | `build_runner` + `slang` 全量生成 |
| `just watch` | `build_runner` 监听 |
| `just analyze` / `just lint` | 静态分析 |
| `just format` / `just fix` | 格式化 / 自动修复 |
| `just test` | 运行测试 |
| `just ready` / `just check` | 提交前检查（format + fix + analyze） |
| `just clean` | 清理构建产物 |
| `just run` / `just apk [mode]` / `just ios` / `just install` | 运行与构建 |

`just upgrade-major`（`--major-versions`）会把 `build_runner` 顶到 2.17+，
而 `retrofit_generator` / `json_serializable` 仍依赖 `build 4.x`，
跑完必须把约束改回 `">=2.16.2 <2.17.0"` 并执行 `just deps`。

## 发布与签名

版本号取自 `pubspec.yaml` 的 `version`，推送 `v*` tag 自动触发 **GitHub Actions**（`.github/workflows/build.yml`）
与 **CNB 云原生构建**（`.cnb.yml`）发版，并通过 `git-cliff` 自动生成 Release Notes：

```bash
git tag v1.0.0 && git push origin v1.0.0
```

流水线产物（Release 附件）：

```text
lunchbox_hub_<version>_arm64-v8a.apk
lunchbox_hub_<version>_armeabi-v7a.apk
lunchbox_hub_<version>.aab
lunchbox_hub_<version>_ios-unsigned.zip            # GitHub Actions 全平台构建产出
lunchbox_hub_<version>_symbols-android-apk.zip     # GitHub Actions Android APK 符号
lunchbox_hub_<version>_symbols-android-appbundle.zip
lunchbox_hub_<version>_symbols-ios.zip             # GitHub Actions iOS 符号
lunchbox_hub_<version>_symbols-android.zip         # CNB Android 符号
```

**签名与环境配置**：本地存在 `android/key.properties` 时自动启用 release 签名，无配置文件时回落 debug 签名。
CI 流水线（GitHub Actions 与 CNB）配置了完整 `KEYSTORE_*` / `ENV_*` Secrets 时启用正式签名与环境注入；
缺失时将输出警告并回落 Debug 签名或基于 `.env.example` 生成环境变量文件。首次生成密钥：

```bash
just signing-key        # 生成 android/app/upload-keystore.jks
just signing-base64     # 输出 base64，填入 CI Secret KEYSTORE_BASE64
just signing-verify     # 校验已构建 APK 的签名者
```

CI 推荐配置的 Secrets：`KEYSTORE_BASE64`、`KEYSTORE_PASSWORD`、`KEY_ALIAS`、`KEY_PASSWORD`、
`ENV_PROD`、`ENV_DEV`（`envied` 编译期读取）。

Dependabot 已配置在 `.github/dependabot.yml`，按周分组检查 `github-actions` 与 `pub` 更新，
并自动忽略 `build_runner` 的 minor/major 升级以防破坏 `build 4.x` 锁定。

> keystore 与密码必须离线备份：丢失后已安装用户无法覆盖升级。
