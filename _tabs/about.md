---
title: 关于我
icon: fas fa-user
order: 4
permalink: /about/
---

<div class="resume-header">
  <h1>何嘉明</h1>
  <p class="resume-role">电子信息工程 · 嵌入式基础 · 流程工程化与持续改进</p>
  <p>广东肇庆 · 19927078978 · <a href="mailto:a1442711426@163.com">a1442711426@163.com</a></p>
</div>

## 个人简介

我具备电子信息工程专业基础，以及制造现场的流程优化与协同经验。硬件侧参与过 STM32、音频电路与机器学习课程项目；工作中接受精益改善方法训练，能够把现场问题转化为清晰的需求、数据、任务、验收标准和可复盘文档。希望在软硬件协同、工程实施或制造数字化相关岗位中，把工程化思维用于解决真实问题。

## 工作经历

### 广东海信电子有限公司

`生产管理储备工程师 / 制造工程师` · `2025.06 - 2026.05`

- **需求澄清与现状建模：**参与现场巡检、岗位访谈与数据收集，围绕 UPH、FPY、换型时长、异常质量等运行指标梳理流程边界，沉淀现状流程、问题台账和优先级，为改善方案提供可追溯的输入。
- **工程化问题定位：**在 PDCA / TPI 改善节奏中，使用 4M1E（人、机、料、法、环）、5 Why、检查表、柏拉图和流程图等方法识别瓶颈与依赖；按影响度、紧急度和实施成本筛选问题，形成可执行的解决方案与 30 天行动计划。
- **流程迭代与交付：**参与以 ECRS、ESEIA 为思路的岗位与工序优化，协助维护 SOP、应有流程与巡检要求；跟踪措施落地、验证结果和复盘材料，帮助将改善经验沉淀为可复用的标准文档。
- **跨职能协作与结果追踪：**与物料、设备、质量等角色协调任务依赖和异常闭环，参与改善汇报与成果展示；相关环节通过瓶颈识别和流程调整，流转效率提升约 8%。

> 这段经历的核心不是“把制造当作软件开发”，而是把在现场形成的**需求分析、流程建模、问题定位、跨团队协同、验收与复盘**能力，迁移到工程项目的交付中。

## 项目经历

> 下列课程设计均为**小组合作**，描述仅覆盖本人实际参与的工作；已按时间从早到晚排列。

<span id="audio-amplifier" class="anchor-target"></span>

### 高保真音频放大器硬件设计

`课程设计 · 小组合作` · `2023.05 - 2023.06`

- 参与基于 NS4225 功放芯片的 Proteus 电路仿真、元器件选型、BOM 成本控制、PCB 布局、焊接与整机调试。
- 参与 USB 音频播放与输出稳定性调试，完成音频放大链路的功能验证和问题记录。

<span id="cnn-digits" class="anchor-target"></span>

### 基于 CNN 的手写数字识别系统

`课程设计 · 小组合作` · `2024.03 - 2024.04`

- 使用 Python 与 TensorFlow（GPU）搭建含 3 个卷积层、3 个池化层的 CNN，参与数据处理、模型训练和超参数调优。
- 与小组成员完成 AlexNet 预训练模型迁移学习实验及数字图片分类验证，整理实验结果与复盘记录。

<span id="stm32-player" class="anchor-target"></span>

### 基于 STM32 的智能音频播放器系统

`课程设计 · 小组合作` · `2024.05 - 2024.06`

- 基于 STM32F103C8T6，集成 SU-03T 离线语音识别模块与 OLED 屏幕，共同完成软硬件联调与功能验证。
- 参与 UART 通信与 OLED 显示逻辑开发，完成歌曲名称、播放状态、音量显示及切歌、暂停、播放、音量调节等离线语音控制功能。

<span id="web-data-visualization" class="anchor-target"></span>

### 网页数据抓取与可视化实践

`个人学习实践` · `2026.07`

- 使用 Python 完成公开网页信息的请求、HTML 解析、字段提取、DataFrame 整理及异常字段清洗。
- 使用 Pandas 进行分类与时间维度统计，并通过 Matplotlib 输出基础图表；记录请求异常和数据质量问题，便于后续复盘。

<span id="bili-knowledge-assistant" class="anchor-target"></span>

### B 站视频知识整理助手

`个人项目 · AI 协作开发` · `2026.07 - 至今`

- 将网页数据请求、解析、清洗和可视化经验扩展为本地知识整理流水线：处理用户主动提交的 B 站公开视频链接，优先读取字幕，无字幕时转录音频，并生成摘要、分类、标签、完整转录与术语索引。
- 以 Python + SQLite 承担任务、转录和审计数据，以 Vue 3 + TypeScript + Electron 构建桌面客户端；加入人工纠错、术语确认、证据回链、关系候选、交互式本地图谱、数据健康审计和脱敏失败历史。
- **AI 协作工具：**使用 Codex 辅助需求拆解、架构设计、代码实现、回归测试和迭代文档；本人负责需求边界、公开数据合规、人工复核规则和验收。Ollama、DeepSeek、Kimi、硅基流动属于软件可选的内容分析 Provider，不等同于开发完成证据。
- **验证：**当前复跑 46 项 Python 离线测试全部通过，Electron/Vue/TypeScript 类型检查与生产构建通过。

<span id="blog-refresh" class="anchor-target"></span>

### 个人博客改版与持续维护

`个人项目` · `2026.07 - 至今`

- 围绕招聘场景重新梳理首页、项目经历、分类、标签、归档、关于与电子简历的信息架构；为课程设计明确补充“小组合作”说明，并将项目按时间顺序组织。
- 基于 Jekyll / Chirpy 的模板层和 SCSS 样式进行定制，建立深色羊皮纸与浅色纸张两套可读性配色；点击头像即可切换主题，并在不同窗口尺寸下检查导航、卡片、页脚和返回顶部控件。
- 使用 Git 管理改动并推送至 GitHub Pages；将每次内容更新作为可追踪交付，持续记录问题、修改原因与验证结果。
- **AI 协作工具：**Codex 用于页面实现、问题定位、自动化检查和文档同步，Gemini 用于早期 UI 视觉方向参考；本人负责需求取舍、个人信息校对、内容真实性和线上多尺寸人工验收。

<span id="life-matrix-chronicle" class="anchor-target"></span>

### Life Matrix & Chronicle

`个人项目 · AI 协作开发` · `2026.08 - 至今`

- 从 0 到 1 构建本地优先的个人认知与行动工作台，以 `Observe → Question → Decide → Act → Review` 为闭环，集成 73 节点生命矩阵、闪念卡与双向链接、决策复盘、时间块、专注记录、证据与日记版本历史。
- 使用 React、TypeScript、Dexie、Zod、Vite 与 Electron，实现乐观更新、不可变历史、无损导入导出、可控 AI 分析、九镜/Human 3.0 模型工具库、侦探工作板、日终草稿恢复和仅公开内容的博客 Feed。
- **AI 协作工具：**使用 Codex 辅助企划落地、模块实现、测试脚本、桌面打包和验收材料；本人负责产品边界、隐私门禁、交互优先级、AI 发送范围及最终验收，不把 AI 生成代码直接视为已掌握或已验证。
- **验证：**当前复跑 TypeScript 类型检查、48 项单元测试和生产构建均通过；最近一次桌面验收另覆盖 19 张真实页面截图和客户端桥接检查。

## 专业技能

<div class="skill-summary-grid">
  <section class="skill-summary-card">
    <p class="skill-summary-kicker">IMPROVEMENT & DELIVERY</p>
    <h3>流程工程化与项目交付</h3>
    <p>能够把现场问题整理为需求、范围、任务、验证标准和复盘材料，关注可执行性与可追溯性。</p>
    <ul>
      <li>PDCA、TPI 改善节奏与项目看板</li>
      <li>现状/应有流程、SOP 与巡检文档</li>
      <li>周计划、行动计划、汇报与复盘</li>
    </ul>
  </section>
  <section class="skill-summary-card">
    <p class="skill-summary-kicker">ANALYSIS & QUALITY</p>
    <h3>数据分析与问题定位</h3>
    <p>了解制造质量与效率指标，能基于数据、现场观察与访谈形成结构化的问题分析。</p>
    <ul>
      <li>UPH、FPY、PPM、OQC 等指标意识</li>
      <li>4M1E、5 Why、ECRS / ESEIA</li>
      <li>检查表、柏拉图、鱼骨图、流程图</li>
    </ul>
  </section>
  <section class="skill-summary-card">
    <p class="skill-summary-kicker">HARDWARE & SOFTWARE</p>
    <h3>嵌入式与软件基础</h3>
    <p>具备软硬件课程项目经验，能参与模块联调、数据处理和基础 Web / 数据库任务。</p>
    <ul>
      <li>STM32、C、UART / I2C、OLED</li>
      <li>Proteus、PCB 焊接、BOM 控制</li>
      <li>Python、TensorFlow、MySQL、Linux</li>
    </ul>
  </section>
</div>

## 教育经历

### 广东石油化工学院

`电子信息工程（本科）` · `2021 - 2025`

- 主修课程：数字电子技术、模拟电子技术、单片机原理及应用、嵌入式系统、Python 程序设计等。
- 外语水平：大学英语四级（CET-4）。

## 社团与组织经历

### 电子信息工程学院质检部

`部长 / 核心干部` · `2023.09 - 2024.07`

- 作为主要负责人，统筹大型活动的审批、现场调度与复盘善后。
- 主导组织学院“十大歌手”歌唱大赛、校园思辩辩论赛等百人级活动，并协助校运会后勤保障，积累组织协调与现场应变经验。

<style>
.resume-header {
  margin: 0 0 2rem;
  padding: 1.6rem 1.8rem;
  border-left: 5px solid var(--link-color);
  border-radius: .5rem;
  background: var(--card-bg);
  box-shadow: 0 .15rem .8rem rgba(0, 0, 0, .06);
}
.resume-header h1 { margin: 0 0 .35rem; }
.resume-header p { margin: .2rem 0; }
.resume-role { font-size: 1.05rem; font-weight: 600; }
.content blockquote { border-left-color: var(--link-color); }
@media (max-width: 576px) {
  .resume-header { padding: 1.2rem; }
}
</style>
