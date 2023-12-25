---
title: STM32F103——DHT11温度传感器
date: 2023-12-7 20:24:00 +0800
categories: [STM32]
tags: [STM32]
pin: false
author: 
    name: hejiahua007
    link: https://space.bilibili.com/507838758
toc: true
comments: true
math: false
mermaid: true

---

## DHT11驱动原理

转自：https://blog.csdn.net/weixin_45631738/article/details/106367121

步骤一

DHT11上电后（DHT11上电后要等待 1S 以越过不稳定状态在此期间不能发送任何指令），测试环境 温湿度数据，并记录数据，同时 DHT11的 DATA 数据线由上拉电阻拉高一直保持高电平；此时 DHT11的 DATA 引脚处于输入状态，时刻检测外部信号。

步骤二

微处理器的 I/O设置为输出同时输出低电平，且低电平保持时间不能小于 18ms（最大不得超过 30ms）， 然后微处理器的 I/O设置为输入状态，由于上拉电阻，微处理器的 I/O即 DHT11的 DATA 数据线也随之变 高，等待 DHT11作出回答信号，发送信号如图所示：

![image](/assets/blog_res/2023-12-7-stm32f103_wenduchuanganqi/image.png)

步骤三

DHT11 的 DATA引脚检测到外部信号有低电平时，等待外部信号低电平结束，延迟后 DHT11 的 DATA 引脚处于输出状态，输出 83微秒的低电平作为应答信号，紧接着输出 87 微秒的高电平通知外设准备接 收数据，微处理器的 I/O 此时处于输入状态，检测到 I/O 有低电平（DHT11回应信号）后，等待 87微秒 的高电平后的数据接收，发送信号如图所示：

![image-1](/assets/blog_res/2023-12-7-stm32f103_wenduchuanganqi/image-1.png)

步骤四

由 DHT11 的 DATA引脚输出 40 位数据，微处理器根据 I/O电平的变化接收 40 位数据，位数据“0” 的格式为： 54 微秒的低电平和 23-27 微秒的高电平，位数据“1”的格式为： 54 微秒的低电平加 68-74 微秒的高电平。位数据“0”、“1”格式信号如图所













































































































