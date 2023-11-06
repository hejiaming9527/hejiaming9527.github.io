---
title: 树莓派——语音合成
date: 2023-11-5 14:00:00 +0800
categories: [树莓派]
tags: [树莓派]
pin: false
author: 
    name: hejiahua007
    link: https://space.bilibili.com/507838758
toc: true
comments: true
math: false
mermaid: true

---

## 环境

代码：https://github.com/Eerrly/VITSAIChatVtube

pip3 install torch （失败）

到官网下载：https://download.pytorch.org/whl/torch_stable.html

我选择下载：cpu/torch-2.1.0-cp310-cp310-manylinux_2_17_aarch64.manylinux2014_aarch64.whl    （失败：版本不合）

因为树莓派运行的是ARM架构的Linux系统，Python版本是3.10

    例子：
    cpu/torch-2.1.0%2Bcpu-cp310-cp310-win_amd64.whl 文件名中的信息如下：

    cpu: 这表示PyTorch是用于CPU的版本，不包括GPU支持。

    torch-2.1.0: 这是PyTorch的版本号，指示您安装的PyTorch版本。

    %2Bcpu: 这表示这个PyTorch版本是CPU版本，没有GPU支持。

    cp310-cp310: 这表示该安装包是为Python 3.10编译的，适用于Python 3.10。

    win_amd64: 这表示该安装包适用于Windows 64位操作系统，通常是在64位的Windows系统上使用。

    最后我安装的是Cython-3.0.5-py2.py3-none-any.whl，这意味着什么

    ChatGPT回答
    Cython-3.0.5-py2.py3-none-any.whl 是一个不特定于架构的Python wheel文件，适用于多个Python版本和平台。让我解释这个文件名的各部分：

    Cython-3.0.5: 这是Cython的版本号，指示您安装的Cython版本。

    py2.py3: 这表示该wheel文件适用于Python 2和Python 3，不依赖于特定的Python版本。

    none: 这表示该wheel文件不包含任何特定的二进制代码，它是纯Python代码的wheel文件。

    any: 这表示该wheel文件不依赖于特定的操作系统或平台，因此可以在各种操作系统和架构上使用。

    这种类型的wheel文件通常是纯Python库的wheel文件，它们不包含与特定操作系统或硬件架构相关的二进制代码，因此可以在多个平台和Python版本上使用。

    因此，您选择安装的Cython-3.0.5-py2.py3-none-any.whl适用于不同的Python版本和不同的操作系统/平台，这使它成为一个通用的Cython安装包。这个通用性使得它可以在各种环境中使用，而不需要考虑特定的架构或Python版本。


1. 添加环境变量

nano ~/.bashrc

    export NO_CUDA=1
    export NO_DISTRIBUTED=1
    export NO_MKLDNN=1
    export MAX_JOBS=1    #如果是树莓派4B,这里修改为4

source ~/.bashrc

2. 添加软件源

sudo nano /etc/apt/sources.list

添加这两行源，不要注释原来的，原来的保持即可

deb http://ftp.de.debian.org/debian stretch main
deb http://ftp.cn.debian.org/debian stretch main

sudo apt-get -y update

3.安装torch依赖

sudo apt install libopenblas-dev libblas-dev m4 cmake cython

pip3 install numpy pyyaml cython

安装 numpy 依赖 不安装或者安装失败也是不会报错的，但是使用的时候不会出结果，如果你的项目没用到 numpy 可以跳过这一步，**我没安装**

pip3 install cpu/torch-2.1.0-cp310-cp310-manylinux_2_17_aarch64.manylinux2014_aarch64.whl（失败）

换个方法：
https://handbook.pytorch.wiki/pi/readme.html

继续

编译pytorch 1.4（失败）

    git clone --recursive https://github.com/pytorch/pytorch
    cd pytorch
    git checkout v1.4 #这里选择最新的1.4版
    git submodule sync
    git submodule update --init --recursive
    git submodule update --remote third_party/protobuf #这句必须要有，否则在编译时会报一个找不到protobuf.h的错误

原因如这里面说的：https://blog.nowcoder.net/n/7f716bb57594459cac983ee8df7d3c63
还有https://cloud.tencent.com/developer/article/1908168

对torch源码进行编译（编译时间过长，长达4个小时，与github连接不稳定，容易导致编译数据下载不完善）

我不应该用python3.10，源不稳定，下载慢。

看来得重新装过系统了