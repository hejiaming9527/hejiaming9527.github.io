---
title: Resume
icon: fas fa-info
order: 4

---

<center>
     <h1>何嘉明</h1>
 </center>

##### 个人信息

- 性 别：男&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;年 龄：21

- 手 机：19927078978&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;邮 箱：[15818927089@163.com](mailto:15818927089@163.com)

- 专 业：电子信息工程&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;岗 位：嵌入式软件工程师
- 博客：[hejiaming9527.github.io](https://hejiahua007.github.io/)

##### 教育经历

- 广东石油化工学院       2021.9~至今      电子信息工程-本科
  
- CET-4

##### 专业技能

- 熟悉 C/C++，Python，了解 Java、

- 熟悉tcp、udp、http等⽹络协议的原理

- 熟悉常⻅的mcu如stm32及⽆线模块，如esp8266、cc2530的使⽤

- 熟练多进程、多线程编程

- 熟悉UART、I2C、SPI等常⻅的通信协议

- 了解freeRTOS轻量级实时操作系统

##### 项目经历

1. 学校 - 基于GEC6818的⾳视频播放器 - 独立开发 - 2021.11 - 2022.01
   
   -  基于GEC6818的⾳视频播放使⽤了madplay/mplayer实现基本的⾳乐播放器功能：暂停、播放、⾳量调节 、⾳乐切换
   - ⾳视频播放器使⽤多线程协同⼯作，使⽤线程锁进⾏同步控制，实现⾳乐线程，进度条获取线程，歌词获取线程的协同⼯作
   - 使⽤链表构建⾳乐⽬录，使⽤管道实现线程间的通信，实现⾳视频状态的获取

2. 学校 - 基于树莓派+opencv+zigbee+sqlite3+LVGL GUI的教室管理系统 - 独立开发 - 2022.9 - 2022.11
   
   - 基于OpenCV框架，树莓派调⽤摄像头硬件，使⽤LBPH算法实现了⼈脸识别的基本功能，实现⼈脸签到功能
   - 使⽤1个协调器、2种终端节点组建星型组⽹，终端节点可完成锁机控制，温度检测，⻛扇控制
   -  树莓派使⽤LVGL实现的交互界⾯，实现头像录⼊界⾯、基于sqlite3的数据管理界⾯、视频监控界⾯

3. 学校 - 海洋环境监控 - 独立开发 - 2023.8 - 2023.9

   基于 GEC6818+sqlite3+ONENET 平台设计的海洋环境监控系统，实现了海洋信息的采集管理，其界⾯利⽤LVGL实现界⾯可视化，收集的数据利⽤MQTT 上传⾄阿⾥云平台进⾏管理查看。
   
   - 基于LVGL GUI的GEC6818实现了5个界⾯：登陆界⾯、主界⾯、信息收集界⾯、信息管理界⾯、⾳乐播放界⾯
   
   - 基于sqlite3实现信息管理系统，实现⽤⼾账号管理以及环境信息的管理、其功能包括增删改查
   
   - 利⽤线程锁实现多线程协同⼯作：登录功能、数据接收功能、数据上传功能、⾳乐播放功能

   - 使⽤MQTT 协议或者 UDP 协议上传⾄ONENET 平台进⾏可视化管理、实现远程控制风扇、舵机、光照等设备
  
   - ZigBee 使⽤1 个协调器、3 个终端节点组建星型⽹络，终端节点可以采集温湿度信息，光照、二氧化碳等功能

4. 学校 - 智慧大棚 - 独立开发 - 2023.10 - 2023.10
   
   基于 STM32F103+ESP8266+QT 设计的智能农业系统，实现了农业信息的采集管理，其界⾯利⽤QT 实现界⾯可视化，收集的农业数据利⽤TCP 上传⾄QT 服务器查看。

   - 感知层实现温湿度、光照强度、二氧化碳浓度的数据采集，完成舵机、风扇的控制。
   - 利⽤AT 指令控制 esp8266 进⾏⽹络通信，使⽤TCP 协议上传⾄QT 服务器进⾏可视化管理、实现远程控制舵机、风扇、光照等设备
   - demo演示地址：[智能农业系统](https://www.bilibili.com/video/BV1TN4y1m7Lc/)

5. 学校 - 睡眠助理 - 独立开发 - 2023.10 - 至今
   
   - 树莓派连接麦克风，实现语音唤醒、语音识别、语音合成，接入智谱 api 实现语音对话。

   - 实现温湿度、光照、二氧化碳、声响等信息的采集

   - 提供语音播报，备忘录，天气预报，音乐播放等功能
   
   - 学习笔记：
   - [hejiahua007.github.io/categories/sleepyuyin/](https://hejiahua007.github.io/categories/sleepyuyin/)
   - [hejiahua007.github.io/tags/树莓派/](https://hejiahua007.github.io/tags/%E6%A0%91%E8%8E%93%E6%B4%BE/)
   
   - demo演示地址：[PC端](https://www.bilibili.com/video/BV1CQ4y1t7wE/?buvid=XY331D6397C7DEA02365CD7AFDF1A668D1BDC&from_spmid=default-value&is_story_h5=false&mid=aUvfUUDHCnnk5epLZGWpsQ%3D%3D&p=1&plat_id=114&share_from=ugc&share_medium=android&share_plat=android&share_session_id=5cedfbe0-83fe-472e-95ec-220a93f0a9c1&share_source=WEIXIN&share_tag=s_i&spmid=united.player-video-detail.0.0&timestamp=1700474728&unique_k=mf1lIzg&up_id=507838758)

##### 校园经历

1. 学校防疫活动 - 志愿者 - 2022.5
   
   - 体温测量：根据体温检测要求，单日完成体温测量100余人；；
   - 秩序维护：通过现场人群的引流与疏导，降低疫情蔓延风险，连续30天新增确诊为0；
   - 防疫宣传：及时完成现场横幅、标识及宣传语的摆挂，提升人们防疫意识。

2. 2023年暑假垃圾分类调研实践 - 组长 - 2023.7
   
   - 计划拟定：根据实践要求拟定14天的任务，分配问卷建立，问卷收集、调研采访、报告撰写等任务
   - 问卷调研：分配小组成员到各大商场，公园，收集4个年龄段的问卷调研，统计超过200份的调研信息
   - 报告制作：汇总实践项目资料，运用建模软件、word等工具，完成50页项目报告PPT。

## 获奖经历

- 学年专业三等奖学金 × 3
- 证书: CET-4
- PAT 60/100

## 其他信息

- 热爱钻研
- 喜欢跑步，获得⼀次keep半⻢奖牌
- 每日反思、写⽇记，喜欢碎碎念总结⽇常
- 有⼀定的组织协调能⼒，曾多次担任⼩组组⻓完成课设
