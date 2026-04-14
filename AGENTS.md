# AGENTS

Lunchbox 项目大模型协作简版规范。

## 指令优先级

- 冲突时按以下顺序执行：`AGENTS.md` > `README.md` > 代码现状与既有约定 > 临时口头说明。
- 若仍有冲突，优先选择更保守、影响面更小的方案，并在交付说明中标注取舍。

## 项目上下文

- 技术栈（基于当前 `pubspec.yaml`）：
- 核心：Flutter (SDK `^3.10.8`)、Dart
- 状态管理：`flutter_riverpod`、`riverpod_annotation`
- 路由与网络：`go_router`、`dio`、`dio_http2_adapter`、`retrofit`、`connectivity_plus`
- 本地存储：`shared_preferences`、`flutter_secure_storage`、`drift`、`drift_flutter`、`sqlite3_flutter_libs`
- UI 与动效：`flutter_screenutil`、`flex_color_scheme`、`flutter_svg`、`flutter_animate`、`animations`、`cached_network_image`、`skeletonizer`
- 地图与定位：`flutter_map`、`geolocator`、`latlong2`
- 业务能力：`flutter_stripe`、`google_sign_in`、`firebase_core`、`firebase_analytics`、`slang_flutter`、`flutter_form_builder`
- 监控与日志：`sentry_flutter`、`sentry_dio`、`talker_flutter`、`talker_dio_logger`
- 模型与序列化：`freezed_annotation`、`json_annotation`、`fpdart`
- 代码生成：`build_runner`、`riverpod_generator`、`retrofit_generator`、`freezed`、`json_serializable`、`drift_dev`、`go_router_builder`
- 结构：Feature-First（`lib/features`）
- 关键目录：`lib/`、`test/`、`docs/`、`scripts/`

## 推荐 Skills

优先按场景启用以下 skills：

- 默认 Flutter 开发：`flutter-expert`、`dart-expert`
- 状态管理/Riverpod：`flutter-riverpod-expert`
- 架构与模块拆分：`flutter-architecture`、`refactor:flutter`
- 测试相关：`flutter-testing`、`flutter-testing-apps`
- 调试问题：`debugger`、`systematic-debugging`

## 开发规则

- 只做与任务直接相关的最小改动。
- 功能代码放对应 `feature`，公共能力放 `lib/shared` 或 `lib/core`。
- 保持现有命名与代码风格，不做无关重构。
- 非必要不改构建脚本、CI、支付主流程和全局路由。

## 依赖升级策略

- `Patch`（补丁版本）：可直接升级，但必须通过 `make analyze` + `make test`。
- `Minor`（小版本）：允许升级，需补充受影响模块的功能回归说明。
- `Major`（大版本）：默认不在业务需求中顺带升级，需单独任务和回滚预案。

高风险依赖（升级需重点回归）：

- 支付链路：`flutter_stripe`
- 路由链路：`go_router`
- 状态管理：`flutter_riverpod`、`riverpod_annotation`
- 数据层：`drift`、`retrofit`、`dio`
- 登录与账号：`google_sign_in`
- 可观测性：`sentry_flutter`、`sentry_dio`

## 回归检查清单

- 启动与基础导航：冷启动、首页、核心路由跳转。
- 登录与会话：登录、登出、会话恢复、鉴权拦截。
- 下单与支付：购物车、下单、支付发起、支付失败处理。
- 数据一致性：本地存储读写、列表刷新、错误重试。
- 稳定性：关键页面异常捕获与日志上报是否正常。

## 版本变更流程

- 先更新 `pubspec.yaml`，再执行 `make deps`。
- 涉及代码生成的依赖变更后执行 `make build`。
- 执行 `make analyze` 与 `make test`，记录结果。
- 在交付说明中明确：变更依赖、影响面、回归范围、风险点。

## 常用命令

默认使用 `make` 命令；`./scripts/lunchbox.sh` 作为 fallback（`make` 不可用或 CI 场景需脚本化时）。

```bash
make deps
make build
make analyze
make test
make ready
```

或：

```bash
./scripts/lunchbox.sh prepare
./scripts/lunchbox.sh ready
./scripts/lunchbox.sh test
```

## 交付要求

- 说明：改了什么、为什么改。
- 列出受影响文件。
- 标注验证结果：`make analyze` / `make test`（通过、失败或未执行原因）。

@RTK.md
