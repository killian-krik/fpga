# Nanosizer FPGA

基于 FPGA 的纳米粒度测量工程，包含 XADC 采集、相关运算、神经网络处理及串口通信模块。

## 目录对照

保留 Vivado 工程目录，对照指南推荐结构如下：

| 内容 | 实际位置 |
| --- | --- |
| 设计源码与 IP（src） | `project_1/project_1.srcs/sources_1/` |
| 引脚及时序约束（src） | `project_1/project_1.srcs/constrs_1/new/` |
| 仿真测试源码（sim） | `project_1/project_1.srcs/sim_1/new/` |
| 综合报告（build） | `project_1/project_1.runs/synth_1/*.rpt` |
| 实现报告（build） | `project_1/project_1.runs/impl_1/*.rpt` |
| 上板工程与烧录文件（board） | `project_1/project_1.xpr`；`project_1/project_1.runs/impl_1/Correlation_Top.bit`、`Correlation_Top.bin` |
| XADC 数据工作簿（data） | `生成XADC采集数据.xlsx` |
| 技能包（skill） | `skill/README.md` |

## 复现步骤

1. 下载仓库并解压，使用 Vivado 2024.2 打开 `project_1/project_1.xpr`。
2. 确认目标器件为 `xc7a100tfgg484-2`、设计顶层为 `Correlation_Top`，按需执行 **Generate Output Products** 生成 IP 输出文件。
3. 按实际开发板检查引脚及时序约束，依次执行综合、实现和 **Generate Bitstream**。
4. 连接开发板，在 **Hardware Manager** 中选择对应器件并使用生成的 `.bit` 文件下载。
