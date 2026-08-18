# awesome-cs-labs-zh

## 中文计算机课程实验文库

整理高质量的中文计算机课程实验文档、源码、实验环境、自动评测和学习路线。

这里关注的不是“课程链接越多越好”，而是：打开文档之后，能否按照说明完成实验，运行代码，看到测试结果，并理解系统为什么这样设计。

> 实验优先：优先收录具备**公开任务说明 + 可获得源码或框架 + 明确环境 + 可观察验证结果**的资源。只有教材、视频或泛课程主页而没有动手出口的资料，不作为本库的核心条目。

## 收录范围

- 算法与数据结构实验
- CSAPP 与计算机系统基础实验
- 计算机组成原理与体系结构实验
- 操作系统内核实验
- 计算机网络与协议栈实验
- 数据库内核与分布式存储实验
- 编译原理与编译器实现实验
- 软件工程、测试与 CI/CD 实验
- 分布式系统、云计算与 AI Infra 实验
- 网络安全、图形学和其他具有明确动手环节的课程项目

## 快速入口

| 方向 | 推荐起点 | 典型产出 |
| --- | --- | --- |
| 算法 | [OI Wiki](https://oi-wiki.org/) | 题解、复杂度分析和可验证实现 |
| 系统基础 | [NJU 计算机系统基础](https://cs.nju.edu.cn/sufeng/course/ics/) | NEMU、运行时和系统实验 |
| 组成原理 | [清华 COD Lab](https://lab.cs.tsinghua.edu.cn/cod-lab-docs/labs/) | CPU、流水线、仿真和硬件测试 |
| 操作系统 | [rCore Tutorial](https://rcore-os.cn/rCore-Tutorial-Book-v3/) | Rust/RISC-V 教学内核 |
| 网络 | [清华 TCP Lab](https://lab.cs.tsinghua.edu.cn/tcp/doc/) | TCP 协议栈和抓包实验 |
| 数据库 | [MiniOB](https://oceanbase.github.io/miniob/db_course_lab/overview/) | 存储、查询、事务和性能测试 |
| 编译器 | [北大 Minic](https://pku-minic.github.io/online-doc/) | SysY 到 RISC-V 的编译器 |
| 分布式 | [TinyKV](https://github.com/talent-plan/tinykv) | Raft、分布式 KV 和事务 |
| 软件工程 | [清华软件工程文档](https://lab.cs.tsinghua.edu.cn/software-engineering/deploy/gitlab-ci) | Git、测试、CI/CD 和部署 |

每条资源的环境、源码入口和验证方式见 [`catalog/index.yaml`](catalog/index.yaml)。其中 `source_access: public` 表示可直接取得公开源码，`course-provided` 表示以课程发放框架为准，`external-sandbox` 只适用于授权靶场；`seasonal` 的课程可能随学期变动，`needs-check` 则不会进入默认学习路线。

## 实验文档索引

### 算法与数据结构

- [OI Wiki](https://oi-wiki.org/)：数据结构、图论、动态规划、字符串、数学和竞赛路线。
- [labuladong 算法教程](https://labuladong.online/zh/)：偏算法框架、题型和面试实践。
- [洛谷](https://www.luogu.com.cn/)：题库和在线评测，用于验证算法实现。

### CSAPP 与计算机系统

- [南京大学计算机系统基础](https://cs.nju.edu.cn/sufeng/course/ics/)：机器级表示、汇编、链接、执行、存储和 I/O。
- [NJU ICS Lab](https://cs.nju.edu.cn/sufeng/course/ics/lab.htm)：配套系统编程实验。
- [一生一芯 / NEMU](https://ysyx.oscc.cc/docs/)：NEMU、ISA、运行时、RTL CPU、SoC 和系统软件。

### 计算机组成原理与体系结构

- [清华计算机组成原理实验](https://lab.cs.tsinghua.edu.cn/cod-lab-docs/labs/)：SystemVerilog/Chisel、CPU 设计、仿真和测试。
- [中科大 COD Lab](https://soc.ustc.edu.cn/COD/)：计算机组成原理课程理论和实验资料。
- [清华 CPU + Router 联合实验](https://lab.cs.tsinghua.edu.cn/router/doc/joint/)：CPU 与硬件网络转发引擎联合实现。

### 操作系统

- [rCore Tutorial Book v3](https://rcore-os.cn/rCore-Tutorial-Book-v3/)：Rust + RISC-V，覆盖启动、特权级、进程、虚拟内存和文件系统。
- [SJTU IPADS OS Course Lab](https://sjtu-ipads.github.io/OS-Course-Lab/)：ChCore 微内核、AArch64、多核、进程和 IPC。
- [uCore-Tutorial-Guide 2023S](https://learningos.cn/uCore-Tutorial-Guide-2023S/chapter0/index.html)：物理/虚拟内存、进程、调度、文件系统和并发。
- [NJU OS Workbench](https://github.com/lxmwust/os-workbench)：基于 xv6 的虚拟化、持久化和并发实验。

### 计算机网络

- [清华 TCP 实验](https://lab.cs.tsinghua.edu.cn/tcp/doc/)：实现 TCP 网络栈，结合 RFC、日志、抓包和自动测试。
- [清华 Router Lab](https://lab.cs.tsinghua.edu.cn/router/doc/)：软件路由器、IPv6、OSPF/RIPng、P4 和数据平面。
- [中科大信息网络实验室](https://if.ustc.edu.cn/course/)：网络原理、组网、Linux 网络命令和 Internet 应用分析。

### 数据库与分布式存储

- [清华数据库系统概论实验](https://thu-db.github.io/dbs-tutorial/)：页式文件、缓存、记录、B+ 树、SQL 解析和查询优化。
- [HuaDB 数据库内核实验](https://thu-db.github.io/huadb-doc/1-prepare/)：页面存储、故障恢复、缓存、查询处理和优化。
- [OceanBase MiniOB](https://oceanbase.github.io/miniob/db_course_lab/overview/)：LSM-Tree、查询引擎、事务引擎和性能测试。
- [PingCAP Talent Plan](https://github.com/pingcap/talent-plan)：Rust/Go、分布式系统和分布式数据库课程。
- [TinyKV](https://github.com/talent-plan/tinykv)：从单机 KV 到 Raft、调度器和分布式事务。

### 编译原理

- [北大编译实践 Minic](https://pku-minic.github.io/online-doc/)：SysY、IR、代码生成、RISC-V 和优化。
- [中科大编译原理和技术](https://ustc-compiler-principles.github.io/textbook/)：词法、语法、语义、IR、后端和在线评测。
- [南京大学编译原理](https://cs.nju.edu.cn/tiantan/courses/compiler-2023/index.html)：实现一个类 C 语言编译器。

### 软件工程与工程实践

- [清华软件工程课程文档](https://lab.cs.tsinghua.edu.cn/software-engineering/deploy/gitlab-ci)：GitLab、项目构建、CI/CD 和部署。
- [南京大学软件工程实验](https://seg.nju.edu.cn/curriculums/Software_Engineering_%28Fall_2018%29/Experiment03)：需求、设计、协同开发和测试。
- [Git4Edu](https://www.gitlink.org.cn/cmy4399/Git4Edu)：将课程、Issue、PR、Review 和 CI 组织成可持续演进的课程资产。
- [希冀软件工程实践平台](https://www.educg.net/se.html)：GitLab、Docker、Kubernetes、代码审查和持续部署。

### 网络安全

- [CTF Wiki](https://ctf-wiki.org/)：Web、Pwn、Reverse、Crypto、Misc 和取证。
- [CTF All in One](https://firmianay.gitbooks.io/ctf-all-in-one/content/)：二进制、ELF、Linux 安全机制和 CTF 实践。

安全实验只应在 CTF、靶场或明确授权的环境中进行。

### 图形学与 AI

- [GAMES 在线课程平台](https://games-cn.org/kkk/)：GAMES101、GAMES102、GAMES103、GAMES104 及作业资料。
- [GAMES101](https://sites.cs.ucsb.edu/~lingqi/teaching/games101.html)：光栅化、几何、光线传播、动画和模拟。
- [动手学深度学习](https://zh.d2l.ai/)：数学、代码和 Jupyter 实验结合的深度学习教材。

## 推荐学习主线

```text
C / C++ / Rust + Linux + Git
        ↓
数据结构与算法
        ↓
CSAPP / NEMU / 计算机组成原理
        ↓
操作系统 + 计算机网络
        ↓
数据库 + 分布式系统
        ↓
编译器 + 软件工程 + 云原生
```

每个实验最好至少留下：

1. 实验目标和前置知识。
2. 环境安装与版本信息。
3. 实验任务和关键设计。
4. 测试命令、输出和常见错误。
5. 源码仓库、官方文档和许可证链接。

## 收录标准

- 优先收录高校、实验室、开源社区或项目方维护的资料。
- 必须有明确实验目标，最好提供源码、测试、评测或可复现环境。
- 标注适合阶段：入门、本科进阶、研究生或工程实践。
- 标注语言、架构、平台和最后核验时间。
- 不上传受版权保护的课程视频、讲义、答案或未经授权的镜像。
- 课程链接失效、版本过旧或无法复现实验时，移入待核验区。

## 目录约定

```text
.
├── catalog/
│   ├── index.yaml       # 机器可读的资源索引
│   └── README.md        # 索引字段说明
├── docs/
│   └── 实验记录模板.md   # 从环境到测试证据的记录模板
├── scripts/             # 本地与 CI 使用的校验脚本
└── .github/workflows/   # 提交校验与每周链接检查
```

资源元数据格式见 [`catalog/README.md`](catalog/README.md)。

## 本地校验与持续核验

不需要安装项目依赖；本机有 Ruby 即可运行：

```bash
ruby scripts/validate_catalog.rb # 校验字段、状态、URL 格式和安全边界
ruby scripts/check_links.rb      # 访问官方入口与源码入口
```

`Validate catalog` 会在提交和 PR 时运行；`Check link health` 每周执行一次。`needs-check` 和 `archived` 的失效链接只会报警，避免历史记录掩盖问题或阻塞维护。

## 贡献

欢迎提交新的实验课程、失效链接修复、版本核验和实验经验。提交前请确认：

- 链接来自公开、合法、可访问的来源。
- 描述准确，不把课程视频或讲义重新上传到本仓库。
- 实验环境、版本和平台信息尽量完整。
- 代码、图片和文档遵守原项目许可证。

详见 [`CONTRIBUTING.md`](CONTRIBUTING.md)。

## 许可证

本仓库中的索引、分类和原创文字采用 [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.zh-hans)；外部课程、代码和文档的版权归原作者或课程方所有。

最后更新：2026-08-18
