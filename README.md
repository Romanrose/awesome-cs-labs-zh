# awesome-cs-labs-zh

计算机课程实验文档、源码和环境索引（中文导航，含国内外资源）。完整元数据见 [`catalog/index.yaml`](catalog/index.yaml)。

## 算法与数据结构

### 国内

- [OI Wiki](https://oi-wiki.org/)：算法、数据结构与竞赛知识库。
- [labuladong 算法教程](https://labuladong.online/zh/)：以解题框架组织的算法实践。
- [洛谷](https://www.luogu.com.cn/)：题库与在线评测平台。

### 国外

- [USACO Guide](https://usaco.guide/)：分级算法专题、题目与在线训练。

## CSAPP 与计算机系统

### 国内

- [南京大学计算机系统基础](https://cs.nju.edu.cn/sufeng/course/ics/)：ISA 模拟、运行时与系统实验。
- [一生一芯 / NEMU](https://ysyx.oscc.cc/docs/)：从模拟器、RTL CPU 到 SoC 软件。
- [西安邮电大学 Linux 内核分析与应用](https://github.com/ljrcore/linuxmooc)：内核模块与源码分析实践。

### 国外

- [CMU CS:APP Labs](https://csapp.cs.cmu.edu/3e/labs.html)：Data、Cache、Shell、Malloc 与 Proxy 实验。
- [Stanford CS107](https://web.stanford.edu/class/cs107/labs.html)：C、指针、堆、汇编与调试实验。

## 计算机组成原理与体系结构

### 国内

- [清华计算机组成原理实验](https://lab.cs.tsinghua.edu.cn/cod-lab-docs/labs/)：CPU、流水线与硬件仿真。
- [清华数字逻辑设计实验](https://lab.cs.tsinghua.edu.cn/digital-design/doc/)：HDL、仿真、综合与 FPGA。
- [中科大 COD Lab](https://soc.ustc.edu.cn/COD/)：组成原理课程实验资料。
- [中科大计算系统综合实验](https://soc.ustc.edu.cn/CECS/)：软硬件协同的计算系统实验。
- [重庆大学硬件综合设计实验](https://github.com/CQU-CS-LABs/CO-lab-docs-CQU)：Verilator、波形与 trace 比对。

### 国外

- [Nand2Tetris](https://www.nand2tetris.org/)：从逻辑门、CPU 到编译器和操作系统。
- [MIT 6.004 Computation Structures](https://computationstructures.org/)：浏览器电路实验与 RISC 处理器设计。
- [UC Berkeley CS61C](https://cs61c.org/sp26/)：C、RISC-V、缓存、并行和 CPU 项目。

## 操作系统

### 国内

- [rCore Tutorial Book v3](https://rcore-os.cn/rCore-Tutorial-Book-v3/)：Rust/RISC-V 教学内核。
- [SJTU IPADS OS Course Lab](https://sjtu-ipads.github.io/OS-Course-Lab/)：ChCore 微内核与多核系统。
- [uCore-Tutorial-Guide 2023S](https://learningos.cn/uCore-Tutorial-Guide-2023S/chapter0/index.html)：内存、进程、文件系统与并发。
- [NJU OS Workbench](https://github.com/lxmwust/os-workbench)：基于 xv6 的系统扩展实验。
- [北京交通大学操作系统课程实验](https://github.com/bjtu-os/labs)：用 Rust 构建 RISC-V 教学内核。
- [浙江大学操作系统课程实验](https://zju-os.github.io/doc/)：从启动、调度到虚存和文件系统。
- [华中科技大学 PKE 操作系统实验](https://gitee.com/hustos/pke-doc)：RISC-V 代理内核与系统能力实验。
- [重庆大学操作系统课程实验](https://github.com/CQU-CS-LABs/osexp-docs-cqu)：LoongArch32 uCore、Docker 与 QEMU。
- [哈工大 Linux 0.11 操作系统实验](https://hoverwinter.gitbooks.io/hit-oslab-manual/)：经典 Bochs/Linux 0.11 实验。

### 国外

- [MIT xv6 操作系统实验](https://pdos.csail.mit.edu/6.1810/2024/)：围绕 RISC-V xv6 实现系统调用、虚存、文件系统与线程。
- [UW CSE451](https://courses.cs.washington.edu/courses/cse451/26wi/)：在 xv6 衍生内核中实现分页、并发与崩溃恢复。

## 计算机网络

### 国内

- [南京大学计算机网络实验文档](https://nasa.nju.edu.cn/tutorial/)：九个实验覆盖 Socket、TCP、路由、mOSPF、交换机与广播，并提供 OJ 评测。
- [PKU CS144 中文学习资料](https://github.com/PKUFlyingPig/CS144-Computer-Network)：Stanford CS144 的中文笔记、实验说明与 TCP/IP 实现路线。
- [中科大信息网络实验室](https://if.ustc.edu.cn/course/)：组网、网络命令与协议分析。
- [清华 TanLabs](https://github.com/thu-cs-lab/tanlabs)：FPGA 转发引擎与 PCAP 测试。

### 国外

- [Stanford CS144](https://web.stanford.edu/class/cs144/)：从字节流、TCP 到 IP 路由的分阶段网络实验。
- [CMU 15-441/641](https://computer-networks.github.io/fa22/)：Mixnet、TCP、HTTP 与抓包测试项目。
- [ETH Zurich Mini-Internet](https://github.com/nsg-ethz/mini_internet_project)：容器化路由器、AS、BGP 与 IPv6 实验。
- [Georgia Tech CS6250](https://omscs.gatech.edu/cs-6250-computer-networks)：Mininet、路由、SDN 防火墙与 BGP 实验。
- [UW CSE461](https://courses.cs.washington.edu/courses/cse461/26wi/)：Socket、HTTP Proxy、Mininet、SDN 防火墙与 L3 路由实验。
- [South Carolina Cybertraining](https://research.cec.sc.edu/cyberinfra/cybertraining)：IPv6、OSPF、BGP、P4、OVS、TCP 性能与网络管理实验。
- [Mininet 官方 Walkthrough](https://mininet.org/walkthrough/)：从虚拟拓扑、链路测试到 OpenFlow/SDN 的入门教程。

## 数据库与分布式存储

### 国内

- [清华数据库系统概论实验](https://thu-db.github.io/dbs-tutorial/)：页式存储、索引与查询处理。
- [HuaDB 数据库内核实验](https://thu-db.github.io/huadb-doc/1-prepare/)：存储、恢复、缓存与查询模块。
- [OceanBase MiniOB](https://oceanbase.github.io/miniob/db_course_lab/overview/)：存储、查询、事务与性能实验。
- [PingCAP Talent Plan](https://github.com/pingcap/talent-plan)：分布式系统与数据库课程集合。
- [TinyKV](https://github.com/talent-plan/tinykv)：从单机 KV 到 Raft 和事务。
- [中国人民大学 RUCBase 数据库实验](https://github.com/ruc-deke/rucbase-lab)：存储、索引、查询与并发控制。

### 国外

- [CMU BusTub](https://15445.courses.cs.cmu.edu/spring2025/)：缓冲池、B+ 树、查询执行与并发控制。
- [UC Berkeley CS186](https://cs186berkeley.net/)：Java 数据库内核、索引、查询、恢复与并发实验。
- [MIT 6.5840](https://pdos.csail.mit.edu/6.824/)：MapReduce、Raft、复制服务与分片实验。

## 编译原理

### 国内

- [北大编译实践 Minic](https://pku-minic.github.io/online-doc/)：SysY 到 RISC-V 的编译器。
- [中科大编译原理和技术](https://ustc-compiler-principles.github.io/textbook/)：前端、IR、后端与在线评测。
- [南京大学编译原理](https://cs.nju.edu.cn/tiantan/courses/compiler-2023/index.html)：实现类 C 语言编译器。
- [中山大学 YatCC](https://yatcc-ai.com/)：六阶段编译器实验与在线 IDE。

### 国外

- [LLVM Kaleidoscope](https://llvm.org/docs/tutorial/)：从词法分析到 LLVM IR、JIT 与优化。
- [Stanford CS143](https://web.stanford.edu/class/cs143/)：Cool 编译器的词法、语法、语义和代码生成项目。

## 高性能计算与 AI 系统

### 国内

- [清华高性能计算导论实验](https://lab.cs.tsinghua.edu.cn/hpc/doc/)：MPI、OpenMP、CUDA 与性能分析。
- [FlagOS AI 系统软件开放课程](https://github.com/flagos-ai/OpenCourse)：算子、编译器与分布式训练实验。
- [昇思与昇腾开发板学习资源库](https://github.com/candle-org/orange-pi-mindspore)：开发板上的大模型与算子实践。
- [阿里云大模型 ACP 教程](https://github.com/AlibabaCloudDocs/aliyun_acp_learning)：RAG、Agent、评测与部署实战。

### 国外

- [LLNL MPI Tutorial](https://hpc-tutorials.llnl.gov/mpi/)：MPI 点对点、集合通信与并行程序练习。

## 软件工程与工程实践

### 国内

- [清华软件工程课程文档](https://lab.cs.tsinghua.edu.cn/software-engineering/deploy/gitlab-ci)：GitLab、测试、CI/CD 与部署。
- [南京大学软件工程实验](https://seg.nju.edu.cn/curriculums/Software_Engineering_%28Fall_2018%29/Experiment03)：需求、设计、协作与测试。
- [Git4Edu](https://www.gitlink.org.cn/cmy4399/Git4Edu)：以 Issue、PR 和 CI 组织课程项目。
- [希冀软件工程实践平台](https://www.educg.net/se.html)：GitLab、容器与持续部署。

### 国外

- [MIT Missing Semester](https://missing.csail.mit.edu/)：Shell、Git、调试、自动化与开发工具实践。
- [MIT 6.031 软件构造](https://web.mit.edu/6.031/www/fa21/)：测试、代码评审、并发、网络与团队项目。

## 网络安全

### 国内

- [CTF Wiki](https://ctf-wiki.org/)：Web、Pwn、逆向、密码与取证。
- [CTF All in One](https://firmianay.gitbooks.io/ctf-all-in-one/content/)：二进制与 Linux 安全实验参考。
- [Bugku](https://ctf.bugku.com/)：面向入门的 CTF/AWD 解题与攻防训练。
- [西电 CTF 终端](https://ctf.xidian.edu.cn/)：高校 CTF 比赛与日常训练平台。

### 国外

- [Vulhub](https://vulhub.org/zh)：用 Docker Compose 本地复现公开漏洞环境。
- [pwn.college](https://pwn.college/dojos)：浏览器沙箱中的 Linux、程序安全与利用挑战。
- [SEED Security Labs](https://seedsecuritylabs.org/)：隔离 Linux 环境中的网络、Web、密码和系统安全实验。
- [TryHackMe](https://tryhackme.com)：引导式房间、靶场与渗透测试训练。
- [Hack The Box](https://www.hackthebox.com)：涵盖 Web、逆向、密码学与系统安全的在线靶场。

## 图形学与人工智能

### 国内

- [GAMES 在线课程平台](https://games-cn.org/kkk/)：图形学与游戏引擎课程作业。
- [动手学深度学习](https://zh.d2l.ai/)：Jupyter 驱动的深度学习实验教材。
- [通义千问 API 入门教程](https://github.com/AlibabaCloudDocs/llm_learning)：从 API 调用到工具与代码执行。

### 国外

- [GAMES101](https://sites.cs.ucsb.edu/~lingqi/teaching/games101.html)：光栅化、光线追踪与渲染作业。
- [UC Berkeley CS184](https://cs184.eecs.berkeley.edu/sp26/)：光栅化、网格、光线追踪与课程项目。
- [Stanford CS148](https://web.stanford.edu/class/cs148/index.html)：Blender、OpenGL、渲染与图像项目。
- [MIT 6.S191](https://introtodeeplearning.com/)：TensorFlow/Jupyter 深度学习软件实验。
- [UC Berkeley CS188](https://inst.eecs.berkeley.edu/~cs188/sp26/)：搜索、多智能体、强化学习与概率推理项目。
