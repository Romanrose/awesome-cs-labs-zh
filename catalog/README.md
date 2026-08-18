# 资源索引格式

`catalog/index.yaml` 用于保存资源的结构化信息，网站或其他工具可以据此生成分类页、筛选器和失效链接检查。

字段约定：

| 字段 | 含义 |
| --- | --- |
| `id` | 稳定的英文标识，使用小写和连字符 |
| `title` | 课程或项目名称 |
| `subject` | `algorithm`、`systems`、`os`、`network`、`database`、`compiler` 等 |
| `institution` | 高校、实验室或项目组织 |
| `kind` | `course`、`lab`、`project` 或 `wiki` |
| `level` | `intro`、`undergraduate`、`advanced` 或 `research` |
| `languages` | 实验主要使用的编程语言 |
| `platforms` | 架构、操作系统或硬件平台 |
| `url` | 官方入口 |
| `status` | `active`、`seasonal`、`archived` 或 `needs-check` |
| `checked` | 最近一次人工核验日期 |
| `outputs` | 实验最终应完成的系统、程序或报告 |

示例：

```yaml
- id: rcore-tutorial-v3
  title: rCore Tutorial Book v3
  subject: os
  institution: Tsinghua University
  kind: lab
  level: undergraduate
  languages: [Rust]
  platforms: [RISC-V, QEMU]
  url: https://rcore-os.cn/rCore-Tutorial-Book-v3/
  status: active
  checked: 2026-08-18
  outputs:
    - runnable teaching kernel
    - lab report
```
