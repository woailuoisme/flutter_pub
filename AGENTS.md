# CLAUDE.md

本文件用于指导 Claude Code 在此仓库中工作。

## 项目概览

Lunchbox Hub 是一个用于售货机管理的 Flutter 应用。
项目采用 feature-first 结构：业务功能放在 `lib/features`，共享能力放在 `lib/core`（必要时放到 `lib/shared`）。

## 目录重点

- `lib/core/`：网络、服务、主题、组件、全局工具
- `lib/features/`：各业务功能模块，新增业务优先放这里
- `test/`：Flutter 单元测试和组件测试
- `assets/`：图片、图标、动画、HTML 资源
- `config/`：`--dart-define-from-file` 使用的环境配置
- `scripts/`：`Makefile` 调用的脚本

## 主要技术

- Riverpod：状态管理
- GoRouter：路由
- Dio / Retrofit：网络请求
- Drift / SQLite：本地存储
- `build_runner`、`riverpod_generator`、`freezed`、`json_serializable`、`retrofit_generator`、`drift_dev`、`go_router_builder`、`slang`、`envied`：常规代码生成

## 推荐技能

以下 skill 与本仓库 `pubspec.yaml` 的技术栈最相关，优先参考：
- `flutter-expert`：Flutter 通用专家。
  优先使用 `make`。

```bash
make deps        # 拉取依赖
make build       # 生成代码
make full-build  # clean + deps + build
make gen-i18n    # 生成国际化
make gen-icons   # 生成应用图标
make gen-splash  # 生成启动页
make gen-key     # 生成 Android 签名文件
make run         # 默认启动
make run-dev     # 使用 config/env_dev.json 启动
make run-prod    # 使用 config/env_prod.json 启动
make test        # 运行全部测试
make test-unit   # 仅单元测试
make test-widget  # 仅组件测试
make analyze     # 静态检查
make format      # 格式化
make fix         # 自动修复
make ready       # fix + format + analyze
make clean       # 清理生成文件
make watch       # 监听生成
make doctor      # 环境检查
```

需要更细粒度时，可直接用 Flutter 命令：

```bash
flutter test test/unit/<file>.dart
flutter test test/widget/<file>.dart
flutter test --coverage
flutter analyze
flutter run --dart-define-from-file=config/env_dev.json
```

## 工作约定

- 只做和任务直接相关的最小改动。
- 不要手改生成文件（如 `*.g.dart`、`*.freezed.dart`、`*.gr.dart`、`lib/generated/**`），需要重新生成。
- 新业务逻辑优先放到对应 feature 内，只有真正共享的部分才放到 `lib/core`。
- 避免无关重构和大范围整理。
- Shell 命令按仓库约定优先使用 `rtk <command>`。

## 代码结构提醒

如果改动会影响路由、登录/会话、网络、本地存储或全局主题，先看 `lib/core` 里的对应实现，再改 feature 代码。
