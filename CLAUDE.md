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

- 只做和任务直接相关的最小改动。
- 不要手改生成文件（如 `*.g.dart`、`*.freezed.dart`、`*.gr.dart`、`lib/generated/**`），需要重新生成。
- 资源路径统一使用 `lib/core/constants/app_assets.dart`；`lib/generated/assets.dart` 仅作为生成产物，不作为业务代码的主入口。
- 新业务逻辑优先放到对应 feature 内，只有真正共享的部分才放到 `lib/core`。
- 避免无关重构和大范围整理。
- Shell 命令按仓库约定优先使用 `rtk <command>`。
- Flutter UI 优先使用 `flutter_screenutil` 做布局。
- 样式优先复用 `Theme.of(context)` 中已有的类型常量。
- 文案优先使用 `slang` 中的定义。
- Form 优先使用 `flutter_form_builder` 和 `form_builder_validators`。
- 页面只负责 UI 组合和事件转发；状态、请求、校验放到对应 feature 的 `provider` / `notifier` / `repository`。
- 组件拆分优先参考现有 feature 结构：通常按 `screens/`、`widgets/`、`providers/`、`repositories/`、`datasources/`、`entities/` 分层，页面保持薄层，像 `auth` feature 那样由页面组装 widget 并通过 provider 驱动状态。
## 代码结构提醒

如果改动会影响路由、登录/会话、网络、本地存储或全局主题，先看 `lib/core` 里的对应实现，再改 feature 代码。

<!-- rtk-instructions v2 -->
# RTK (Rust Token Killer) - Token-Optimized Commands

## Golden Rule

**Always prefix commands with `rtk`**. If RTK has a dedicated filter, it uses it. If not, it passes through unchanged. This means RTK is always safe to use.

**Important**: Even in command chains with `&&`, use `rtk`:
```bash
# ❌ Wrong
git add . && git commit -m "msg" && git push

# ✅ Correct
rtk git add . && rtk git commit -m "msg" && rtk git push
```

## RTK Commands by Workflow

### Build & Compile (80-90% savings)
```bash
rtk cargo build         # Cargo build output
rtk cargo check         # Cargo check output
rtk cargo clippy        # Clippy warnings grouped by file (80%)
rtk tsc                 # TypeScript errors grouped by file/code (83%)
rtk lint                # ESLint/Biome violations grouped (84%)
rtk prettier --check    # Files needing format only (70%)
rtk next build          # Next.js build with route metrics (87%)
```

### Test (90-99% savings)
```bash
rtk cargo test          # Cargo test failures only (90%)
rtk vitest run          # Vitest failures only (99.5%)
rtk playwright test     # Playwright failures only (94%)
rtk test <cmd>          # Generic test wrapper - failures only
```

### Git (59-80% savings)
```bash
rtk git status          # Compact status
rtk git log             # Compact log (works with all git flags)
rtk git diff            # Compact diff (80%)
rtk git show            # Compact show (80%)
rtk git add             # Ultra-compact confirmations (59%)
rtk git commit          # Ultra-compact confirmations (59%)
rtk git push            # Ultra-compact confirmations
rtk git pull            # Ultra-compact confirmations
rtk git branch          # Compact branch list
rtk git fetch           # Compact fetch
rtk git stash           # Compact stash
rtk git worktree        # Compact worktree
```

Note: Git passthrough works for ALL subcommands, even those not explicitly listed.

### GitHub (26-87% savings)
```bash
rtk gh pr view <num>    # Compact PR view (87%)
rtk gh pr checks        # Compact PR checks (79%)
rtk gh run list         # Compact workflow runs (82%)
rtk gh issue list       # Compact issue list (80%)
rtk gh api              # Compact API responses (26%)
```

### JavaScript/TypeScript Tooling (70-90% savings)
```bash
rtk pnpm list           # Compact dependency tree (70%)
rtk pnpm outdated       # Compact outdated packages (80%)
rtk pnpm install        # Compact install output (90%)
rtk npm run <script>    # Compact npm script output
rtk npx <cmd>           # Compact npx command output
rtk prisma              # Prisma without ASCII art (88%)
```

### Files & Search (60-75% savings)
```bash
rtk ls <path>           # Tree format, compact (65%)
rtk read <file>         # Code reading with filtering (60%)
rtk grep <pattern>      # Search grouped by file (75%)
rtk find <pattern>      # Find grouped by directory (70%)
```

### Analysis & Debug (70-90% savings)
```bash
rtk err <cmd>           # Filter errors only from any command
rtk log <file>          # Deduplicated logs with counts
rtk json <file>         # JSON structure without values
rtk deps                # Dependency overview
rtk env                 # Environment variables compact
rtk summary <cmd>       # Smart summary of command output
rtk diff                # Ultra-compact diffs
```

### Infrastructure (85% savings)
```bash
rtk docker ps           # Compact container list
rtk docker images       # Compact image list
rtk docker logs <c>     # Deduplicated logs
rtk kubectl get         # Compact resource list
rtk kubectl logs        # Deduplicated pod logs
```

### Network (65-70% savings)
```bash
rtk curl <url>          # Compact HTTP responses (70%)
rtk wget <url>          # Compact download output (65%)
```

### Meta Commands
```bash
rtk gain                # View token savings statistics
rtk gain --history      # View command history with savings
rtk discover            # Analyze Claude Code sessions for missed RTK usage
rtk proxy <cmd>         # Run command without filtering (for debugging)
rtk init                # Add RTK instructions to CLAUDE.md
rtk init --global       # Add RTK to ~/.claude/CLAUDE.md
```

## Token Savings Overview

| Category | Commands | Typical Savings |
|----------|----------|-----------------|
| Tests | vitest, playwright, cargo test | 90-99% |
| Build | next, tsc, lint, prettier | 70-87% |
| Git | status, log, diff, add, commit | 59-80% |
| GitHub | gh pr, gh run, gh issue | 26-87% |
| Package Managers | pnpm, npm, npx | 70-90% |
| Files | ls, read, grep, find | 60-75% |
| Infrastructure | docker, kubectl | 85% |
| Network | curl, wget | 65-70% |

Overall average: **60-90% token reduction** on common development operations.
<!-- /rtk-instructions -->