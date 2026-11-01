# Nanosizer FPGA

基于 FPGA 的纳米粒度测量相关工程，包含 XADC 采集、相关运算、神经网络处理及串口通信模块。本仓库保留现有 Vivado 工程的目录结构。

## 开发环境

- 工程保存版本：AMD Vivado 2024.2。
- 工程目标器件：`xc7a100tfgg484-2`。
- 设计顶层：`Correlation_Top`。
- 工程中配置的仿真顶层：`tb_Correlation_Top`。
- 时钟约束：输入时钟周期为 20 ns，即 50 MHz。

## 目录及材料对照

| 材料 | 本仓库中的实际位置 | 说明 |
| --- | --- | --- |
| Vivado 工程入口 | `project_1/project_1.xpr` | 使用 Vivado 打开 |
| RTL 设计源码 | `project_1/project_1.srcs/sources_1/new/` | Verilog、SystemVerilog 及权重、缩放参数头文件 |
| IP 配置及相关文件 | `project_1/project_1.srcs/sources_1/ip/` | 包括 `.xci` 配置和现有配套文件 |
| 引脚及时序约束 | `project_1/project_1.srcs/constrs_1/new/ParticleCounter_Constraints.xdc` | 使用前核对实际开发板与接口 |
| 仿真测试源码 | `project_1/project_1.srcs/sim_1/new/` | 保留现有测试文件 |
| 仿真波形显示配置 | `project_1/simulation_behav.wcfg` | 波形窗口配置，不是仿真结果 |
| 工程引用的综合检查点 | `project_1/project_1.srcs/utils_1/imports/synth_1/Correlation_Top.dcp` | 保留工程内引用文件 |
| 已有综合报告 | `project_1/project_1.runs/synth_1/*.rpt` | 随原工程保留的历史报告 |
| 已有实现报告 | `project_1/project_1.runs/impl_1/*.rpt` | 包括时序、资源、功耗等报告 |
| 已有上板输出 | `project_1/project_1.runs/impl_1/Correlation_Top.bit`、`Correlation_Top.bin` | 历史生成文件，使用前核对硬件及源码版本 |
| XADC 数据工作簿 | `生成XADC采集数据.xlsx` | 保留原始文件名及位置 |

本仓库使用以上目录对照说明现有材料位置，不要求将工程改为 `src/`、`sim/`、`build/` 等目录。

## 获取和打开工程

1. 下载仓库 ZIP 并解压，或使用 Git 克隆：

   ```powershell
   git clone https://github.com/killian-krik/fpga.git
   ```

2. 使用 Vivado 2024.2 打开 `project_1/project_1.xpr`。
3. 检查目标器件、顶层模块、IP 状态和约束文件。对于缺少的 IP 输出文件，使用 Vivado 的 **Generate Output Products** 重新生成。
4. 核对实际开发板、时钟、引脚及模拟输入连接后，再执行综合、实现和生成比特流。

## 当前验证范围

本次上传保留原始设计内容，没有重新运行 Vivado 仿真、综合或实现。仓库内的报告与烧录文件是原工程已有产物，不能据此保证与当前源码完全一致。

现有 `tb_Correlation_Top.sv` 仍使用 AD9226 数据接口，而当前设计顶层采用 XADC 接口，两者端口存在差异；仿真前需要更新测试文件。约束文件也保留了 AD9226 接口相关条目，构建前需要检查并处理无效端口约束。

## 上传范围与比赛提交说明

- `.gitignore` 排除 Vivado 缓存、临时文件、运行日志、仿真运行目录和波形数据；本地原文件仍保留。
- 综合报告、实现报告及 `.bit`、`.bin` 文件按原目录保留，其他运行中间文件由 Vivado 重新生成。
- 本次上传保留原有文件名，包括大小写、空格及中文。若用于比赛正式提交，还需依据指南处理文件命名，并同步更新工程及文件中的路径引用。
- 本仓库暂未补充独立设计报告、大模型协作记录、技能包和板上实测说明。正式提交前需根据所选赛题的实际要求补齐材料，并在此表中更新对应位置。
