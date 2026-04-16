# Lunchbox Hub Speckit Guide

本文档用于把当前项目的 Spec Kit 使用方式固定下来，避免后续继续产出
和仓库实际结构不匹配的 `spec.md`、`plan.md`、`tasks.md`。

## 当前状态

仓库已经具备 `.specify/` 基础结构，但项目级宪章此前仍是模板占位状态。
本次整理后，Speckit 的项目基线由以下文件共同组成：

- `.specify/memory/constitution.md`
- `.specify/templates/spec-template.md`
- `.specify/templates/plan-template.md`
- `.specify/templates/tasks-template.md`

## 项目级规则摘要

### 1. 架构边界

- 采用 feature-first 结构
- 业务逻辑优先放在 `lib/features/<feature>/`
- 共享能力放在 `lib/core/`
- 避免跨 feature 直接依赖内部实现

### 2. 分层职责

```text
Screen / Widget
  -> Provider / Notifier
  -> Repository
  -> Datasource
  -> Remote API / Local DB / Cache
```

- 页面只负责 UI 组合、事件转发、状态展示
- Provider 负责状态协调
- Repository 是业务侧唯一数据入口
- Datasource 只负责具体 I/O

### 3. Flutter 约束

- 使用 Flutter stable 与当前仓库 Dart 版本
- 状态管理统一使用 Riverpod
- 路由统一使用 GoRouter
- 网络统一使用 Dio + Retrofit
- 本地结构化存储统一使用 Drift + SQLite
- 用户可见文案统一走 Slang
- 样式优先复用主题与现有共享组件
- 复杂表单优先 `flutter_form_builder` + `form_builder_validators`

### 4. 生成与资源约束

- 不手改 `*.g.dart`、`*.freezed.dart`、`*.gr.dart`
- 需要改注解、路由、i18n、Retrofit、Drift 时，必须补生成任务
- 资源路径优先通过 `lib/core/constants/app_assets.dart`

### 5. 验证要求

实现完成前至少明确以下验证项：

- 代码生成是否需要执行 `make build`
- 静态检查是否需要执行 `make analyze`
- 测试是否需要执行 `flutter test` 或 `make test`
- 是否需要 `make ready` 做收口

## Speckit 在本项目中的正确落点

### constitution

只负责项目长期稳定的不可轻易违反的规则，例如：

- 分层边界
- Flutter 技术栈约束
- 代码生成纪律
- i18n 与主题规范
- 验证与最小改动原则

不要把依赖清单或某个具体需求实现细节堆进 `constitution`。

### plan

应该根据当前仓库和 feature 真实情况来写，重点包括：

- 受影响的 feature 与目录
- 涉及的 provider、repository、datasource、screen、widget
- 是否改路由、i18n、代码生成
- 技术实现路径与验证策略

`pubspec.yaml` 的依赖信息主要应该体现在 `plan`，不是 `constitution`。

### tasks

必须直接对应当前 Flutter 仓库的真实路径，而不是通用模板里的 `src/`：

- `lib/features/<feature>/...`
- `lib/core/...`
- `lib/routes/...`
- `lib/i18n/...`
- `test/...`

## 推荐流程

1. 先写 `spec.md`，定义用户故事、边界条件、功能需求、成功标准
2. 再写 `plan.md`，确认目录、分层、依赖、验证方式
3. 再生成 `tasks.md`，把任务拆到真实文件路径
4. 开始实现前，检查是否违反项目宪章
5. 实现后跑最小充分验证

## 结论

对 Lunchbox Hub 来说：

- `constitution` 负责沉淀长期工程规则
- `plan` 负责吸收当前 `pubspec.yaml` 和仓库结构的现实约束
- `tasks` 负责落到真实 Flutter 文件路径和生成、测试命令

如果后续要继续用 Speckit 扩展当前项目，应以
`.specify/memory/constitution.md` 为最高规则源，而不是再从零写一份散落的
单文件说明。
