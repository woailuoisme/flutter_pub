# AGENTS

Lunchbox Hub 项目大模型协作简版规范。

## 项目上下文

- 业务定位：面向售货机运营管理场景的 Flutter 应用。
- 技术栈（基于当前 `pubspec.yaml`）：
  - 核心：Flutter 3.50.0、Dart (SDK `^3.10.8`)
  - 状态管理：`flutter_riverpod`、`riverpod_annotation`
  - 路由与网络：`go_router`、`dio`、`dio_http2_adapter`、`retrofit`、`connectivity_plus`、`web_socket_channel`
  - 本地存储：`shared_preferences`、`flutter_secure_storage`、`drift`、`drift_flutter`
  - UI 与动效：`material_ui`、`cupertino_ui`、`flutter_screenutil`、`flex_color_scheme`、`material_symbols_icons`、`flutter_svg`、`flutter_animate`、`cached_network_image`、`skeletonizer`、`toastification`、`fl_chart`、`flutter_markdown_plus`
  - 地图与定位：`flutter_map`、`geolocator`、`latlong2`
  - 业务与设备：`flutter_form_builder`、`form_builder_validators`、`slang_flutter`、`webview_flutter`、`home_widget`、`upgrader`
  - 日志：`talker_flutter`、`talker_dio_logger`
  - 模型与序列化：`freezed_annotation`、`json_annotation`
  - 代码生成：`build_runner`、`riverpod_generator`、`retrofit_generator`、`freezed`、`json_serializable`、`drift_dev`、`envied_generator`、`go_router_builder`、`slang`
- 结构：Feature-First（`lib/features`）
- 关键目录：`lib/`、`test/`、`assets/`、`config/`、`docs/`、`scripts/`
- 工具链：Flutter 3.50.0、JDK 21（`.mise.toml` 固定）
- Android：AGP 9.3.1 + Gradle 9.5.0 + KGP 2.4.20，`compileSdk 37`、`minSdk 26`；
  **不要**给 `:app` 应用 `kotlin-android`；`android/build.gradle.kts` 已全局排除 `play-services-tapandpay`
- iOS：Swift Package Manager，不使用 CocoaPods
- 本地数据库：`lib/core/services/app_database.dart`（drift），由 `databaseServiceProvider` 管理

## 推荐 Skills

优先按场景启用以下 skills：

- 默认 Flutter / Dart 开发：`flutter-expert`、`dart-expert`
- 架构与规范：`flutter-apply-architecture-best-practices`、`flutter-add-widget-preview`
- 测试与质量：`dart-add-unit-test`、`dart-run-static-analysis`、`dart-fix-runtime-errors`
- 调试问题：`diagnosing-bugs`

## 开发规则

- 只做与任务直接相关的最小改动；Shell 命令按仓库约定优先使用 `rtk <command>`。
- 不要手改生成文件（如 `*.g.dart`、`*.freezed.dart`、`*.gr.dart`、`lib/generated/**`），需通过 `just build` 重新生成。
- 资源路径统一使用 `lib/core/constants/app_assets.dart`；`lib/generated/assets.dart` 仅作为生成产物，不作为业务代码的主入口。
- 功能代码放对应 `lib/features/<feature>/`，共享能力放 `lib/core`（必要时放 `lib/shared`）。
- 页面保持薄层，只负责 UI 组合和事件转发；状态、请求、校验放到 `provider` / `notifier` / `repository`（参考 `auth` 分层）。
- UI 优先使用 `flutter_screenutil` 与 `Theme.of(context)` 已有样式；文案优先使用 `slang`；表单优先使用 `flutter_form_builder` + `form_builder_validators`。
- 影响路由、登录/会话、网络、本地存储或全局主题的改动，先查看 `lib/core` 对应实现。
- 保持现有命名与代码风格，避免无关重构；非必要不改构建脚本、CI 和全局路由。

## 依赖升级策略

- `Patch`（补丁版本）：可直接升级，但必须通过 `just analyze` + `just test`。
- `Minor`（小版本）：允许升级，需补充受影响模块的功能回归说明。
- `Major`（大版本）：默认不在业务需求中顺带升级，需单独任务和回滚预案。
- `just upgrade-major`（`--major-versions`）会把 `build_runner` 改回 `^2.17.1`（要求 `build 5.x`，
  与 `retrofit_generator` / `json_serializable` 冲突），跑完需手动改回
  `">=2.16.2 <2.17.0"` 并执行 `just deps`。
- Dependabot（`.github/dependabot.yml`）已配置 `ignore` 策略，禁止自动提交 `build_runner` 的 minor/major 升级 PR。

高风险依赖（升级需重点回归）：

- 路由链路：`go_router`
- 状态管理：`flutter_riverpod`、`riverpod_annotation`
- 数据层：`drift`、`retrofit`、`dio`、`web_socket_channel`
- 表单与国际化：`flutter_form_builder`、`slang_flutter`
- 系统与小组件：`home_widget`、`webview_flutter`、`permission_handler`

## 回归检查清单

- 启动与基础导航：冷启动、首页、核心路由跳转。
- 登录与会话：登录、登出、会话恢复、鉴权拦截。
- 设备与维护流：设备/库存管理、维护流程、通知反馈与地图定位。
- 数据一致性：本地存储读写、列表刷新、错误重试。
- 稳定性：关键页面异常与日志上报是否正常。

## 版本变更流程

- 先更新 `pubspec.yaml`，再执行 `just deps`。
- 涉及代码生成的依赖变更后执行 `just build`。
- 执行 `just analyze` 与 `just test`，记录结果。
- 在交付说明中明确：变更依赖、影响面、回归范围、风险点。

## 常用命令

```bash
just deps           # flutter pub get --no-example
just upgrade        # 升级依赖（可加 --tighten / 包名）
just outdated       # 查看可升级依赖
just build          # build_runner + slang 全量生成
just analyze        # 静态代码分析
just test           # 运行测试
just ready          # 提交前检查（format + fix + analyze）
just apk [mode]     # 构建 Android 包
just signing-key    # 首次生成 release keystore
just signing-verify # 校验 APK 签名者
```

或：

```bash
./scripts/manage.sh prepare
./scripts/manage.sh ready
./scripts/manage.sh test
```

## 发布与签名

- 推 `v*` tag 同时触发 GitHub Actions（`.github/workflows/build.yml`，Android + iOS 全平台）
  与 CNB（`.cnb.yml`，Android 容器化构建）发版，版本号来自 Tag（`${GITHUB_REF_NAME#v}` / `${CNB_BRANCH#v}`），
  Release Notes 由 `git-cliff` 自动生成。
- Release 产物：分 ABI APK（`arm64-v8a` / `armeabi-v7a`）+ AAB + iOS unsigned zip（GitHub Actions）+ 调试符号 zip，**不产 universal 包**。
- 签名与环境策略：`android/app/build.gradle.kts` 在存在 `android/key.properties` 时使用 release 签名，缺失时回落 debug 签名；
  CI 流水线缺失 `KEYSTORE_*` 时发出警告并回落 Debug 签名，缺失 `ENV_PROD` / `ENV_DEV` 时优先回退 `.env.example`。

## 交付要求

- 说明：改了什么、为什么改。
- 列出受影响文件。
- 标注验证结果：`just analyze` / `just test`（通过、失败或未执行原因）。

@RTK.md

<!-- SPECKIT START -->
For additional context about technologies to be used, project structure,
shell commands, and other important information, read the current plan
<!-- SPECKIT END -->
