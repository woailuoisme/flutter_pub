# Lunchbox Hub

Lunchbox Hub 是一个面向售货机运营场景的 Flutter 移动端项目，覆盖登录鉴权、
设备与库存管理、维护流程、通知反馈、地图定位、个人资料与系统设置等能力。

## 技术栈

- Flutter stable + Dart 3
- Riverpod
- GoRouter
- Dio + Retrofit
- Drift + SQLite
- Slang
- Flutter ScreenUtil

## 项目结构

```text
lib/
├── core/        # 全局共享能力：网络、主题、错误、组件、工具
├── features/    # 业务功能模块，按 feature 分层
├── generated/   # 生成产物
├── i18n/        # 多语言资源
└── routes/      # 路由定义与跳转配置

test/            # 单元测试、组件测试
assets/          # 图片、图标、动画、HTML
config/          # dart-define 配置
scripts/         # justfile 调用脚本
```

## 开发约定

- 业务代码优先放在 `lib/features/<feature>/`
- 页面保持薄层，业务规则放到 provider、service、repository
- 不手改 `*.g.dart`、`*.freezed.dart`、`*.gr.dart`、`lib/generated/**`
- 用户可见文案走 `slang`
- 样式优先复用主题与现有组件

## 常用命令

```bash
just deps
just build
just run-dev
just test
just analyze
just ready
```

更细粒度命令见 [AGENTS.md](./AGENTS.md)。
