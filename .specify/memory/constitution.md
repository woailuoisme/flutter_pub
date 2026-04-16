## Core Principles

### I. Feature-First Boundaries
Lunchbox Hub 的业务代码 MUST 放在 `lib/features/<feature>/` 中，共享基础设施 MUST
放在 `lib/core/` 中。每次 feature 改动 MUST 保持清晰分层，至少覆盖模块内已经建立
好的 `datasources`、`repositories`、`providers`、`screens`、`widgets`、`entities`
或其等价目录。跨 feature 的复用 MUST 通过稳定抽象完成，禁止直接穿透到其他 feature
内部实现。这样可以保证不同角色流程独立演进，并降低某个模块变更导致的联动回归。

### II. Thin UI, Provider-Coordinated State
页面与组件 MUST 以表现层职责为主：负责组合 UI、转发用户意图，以及渲染 loading、
empty、error、success 等状态。状态编排 MUST 通过 Riverpod provider 或 notifier
完成。业务规则、校验逻辑和流程决策 MUST NOT 写在 Flutter 页面组件里。这样可以保
证重建行为可预测，并让 UI 保持可测试。

### III. Repository-Governed Data Access
Repository 是业务层访问远程接口、本地数据库、缓存和安全存储的唯一入口。Datasource
MUST 只负责具体 I/O。UI 与 provider MUST NOT 直接调用 Dio、Drift、SQLite、
`SharedPreferences` 或安全存储实现。当数据同时涉及在线与离线来源时，合并策略与
错误转换 MUST 由 repository 层统一负责。这可以保证数据访问入口唯一，并为后续离线
与同步能力保留清晰边界。

### IV. Generated Code, Localization, and Theme Discipline
`*.g.dart`、`*.freezed.dart`、`*.gr.dart` 以及 `lib/generated/**` 等生成产物
MUST NOT 手工修改。所有用户可见文案 MUST 通过 `slang` 提供，资源路径 SHOULD
优先通过 `lib/core/constants/app_assets.dart` 管理，UI 样式 SHOULD 优先复用
`Theme.of(context)` 与 `flutter_screenutil`。复杂表单 SHOULD 优先使用
`flutter_form_builder` 与 `form_builder_validators`，除非现有 feature 已证明更窄
的模式更合适。这样可以保持视觉、文案和生成代码的一致性。

### V. Verify, Reuse, and Minimize Change
所有非平凡改动 MUST 保持在请求目标的最小范围内，优先复用已有 feature 模式，再考
虑引入新抽象，并在交付前完成本地验证闭环。至少，受影响代码 MUST 通过相关代码生
成、格式化、静态检查与测试；若未执行，必须明确说明缺口。无关重构、同类能力替代库
引入、以及大范围结构整理均被禁止，除非规格文档明确要求。

## Additional Constraints

- 项目 MUST 使用仓库当前声明的 Flutter stable 与 Dart stable SDK。
- 导航 MUST 继续基于 `go_router`，并保持集中式 redirect 或 guard 逻辑。
- 网络层 MUST 继续基于现有 Dio + Retrofit 栈，并复用统一拦截器、超时策略与错误转换。
- 结构化本地持久化 MUST 继续使用 Drift + SQLite。轻量配置与敏感信息 MUST 分别走既
  有的键值存储与安全存储方案。
- 新依赖 MUST 基于能力缺口而不是个人偏好引入，并且 MUST 避免与 `pubspec.yaml` 中
  已存在能力重复。

## Development Workflow

1. 在开始大改动前，先通过 Spec Kit 文档定义或澄清 feature 意图。
2. 在新增抽象前，先检查现有 feature 模式与 `lib/core` 中的已有实现。
3. 用满足需求的最小改动完成实现，同时保持本宪章要求的模块边界。
4. 当注解、路由、i18n、Retrofit、Drift 或环境模型变化时，必须重新生成代码。
5. 使用最小充分的验证命令完成仓库验证闭环，例如 `make build`、定向 `flutter test`、
   `make analyze`，以及跨多个区域变更时的 `make ready`。
6. 在最终交付说明中记录任何有意偏离、残余风险或未执行的检查项。

## Governance

本宪章覆盖 Lunchbox Hub 内关于架构、数据流、验证与项目卫生的临时个人习惯。后续的
spec、plan、tasks MUST 包含 constitution check，并且实现工作 MUST 以本宪章为准，
不得绕过。

所有修订都需要更新本文件、在顶部同步影响报告中记录变更，并在同一改动中同步更新受
影响的模板或运行期说明文档。版本规则遵循语义化意图：

- MAJOR: 不兼容的治理变更、原则删除或原则重定义
- MINOR: 新增原则或显著扩展既有约束
- PATCH: 不改变执行含义的措辞澄清

每个 feature 的计划阶段，以及实现交付前，都需要进行合规复核。如果某项改动无法满足
某条原则，例外 MUST 明确、具备时限，并在对应 plan 中给出理由。
