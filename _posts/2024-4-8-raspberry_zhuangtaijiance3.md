---
title: 树莓派——YOLOv5-Lite 2
date: 2024-4-8 16:15:00 +0800
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

## 前言

模型已制作出能够识别玩手机状态，有两个缺点，部分姿势无法识别，其二是手上拿着方方正正的东西都有可能会识别为玩手机。但就床上而言，方方正正的东西一般都为手机，或是书籍。可能还有杯子。这个问题难以解决，或许可以弄上一个姿势的，凡是摆出玩手机的姿态，并且用这个模型还是别出为玩手机的，那就可以认为是玩手机，也就是说两重检测，一个是目标检测，一个是姿态的检测。但现在勉强可以糊弄毕设，先掠过先。

接下来收集书本的数据集，然后制作模型。再然后将这三个模型放到系统中。最后优化细节。希望一切顺利。

## 书本数据集的模型收集

关键词：床 看书、沙发 看书、桌子 看书、咖啡厅 看书、草地 看书、宿舍看书

效率过低，或许是因为反爬虫的手段，无法直接用爬虫爬取大量的图片，而且图片质量残次不齐，到最后都得手动分辨，所以一直以来都是手动拖动图片保存，但保存命名一样，所以还得手动重命名，这很浪费时间。

所以打算整一个脚步，用于在保存网络图片时自动重命名为顺序数字，并且能够持续运行监控文件夹变化，那样看到图片然后拖动到文件夹哪里就可以了，应该能节省五分之三的时间。效果非常好，很爽。

```py
import os
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

# 指定图片保存的目录
image_directory = "D:/git_cangku/data/book/book_data_collect2/train/images"

# 创建一个事件处理器类，用于监控文件夹中的变化
class ImageRenameHandler(FileSystemEventHandler):
    def __init__(self, directory):
        self.directory = directory
        self.last_renamed = self.get_last_image_number()

    def get_last_image_number(self):
        # 获取目录中的所有文件
        files = os.listdir(self.directory)
        # 筛选出图片文件
        image_files = [f for f in files if f.lower().endswith(('.png', '.jpg', '.jpeg', '.gif', '.bmp'))]
        # 按文件名转换为数字后进行排序
        image_numbers = [int(os.path.splitext(f)[0]) for f in image_files if f.split('.')[0].isdigit()]
        # 返回最大的数字，如果没有图片则返回0
        return max(image_numbers, default=0)

    def on_created(self, event):
        # 只对文件进行处理
        if not event.is_directory:
            # 获取文件扩展名
            extension = os.path.splitext(event.src_path)[1].lower()
            # 检查是否为图片文件
            if extension in ('.png', '.jpg', '.jpeg', '.gif', '.bmp'):
                # 等待文件写入完成
                time.sleep(1)
                # 重命名文件
                self.rename_file(event.src_path)

    def rename_file(self, file_path):
        # 定义新的文件名
        new_filename = f"{self.last_renamed + 1}{os.path.splitext(file_path)[1]}"
        # 重命名文件
        os.rename(file_path, os.path.join(self.directory, new_filename))
        # 更新最后重命名的编号
        self.last_renamed += 1

# 创建事件处理器实例
event_handler = ImageRenameHandler(image_directory)

# 创建观察者对象
observer = Observer()
observer.schedule(event_handler, image_directory, recursive=False)

# 开始监控
observer.start()
print(f"开始监控目录 {image_directory} ...")

try:
    # 保持脚本运行
    while True:
        time.sleep(1)
except KeyboardInterrupt:
    # 停止监控
    observer.stop()

observer.join()

# 打印成功信息
print(f"目录 {image_directory} 中的图片已成功重命名为顺序数字。")

```

关键词：床 看书、沙发 看书、桌子 看书、咖啡厅 看书、草地 看书、宿舍看书、河边看书、晨 光 看书、老年人 看书、车 看书、飞机 看书、飞机 读书、车 读书、街边 读书、客厅 读书、卧室 看书、吊床 看书、孕妇 看书 、雨 看书、船 看书、码头 看书、树下 看书、办公室 看书、沙滩 看书、躺椅 看书、酒吧 看书、音乐 看书、火车 看书

手机了2000张，感觉这次的训练难度应该会比手机的难很多，书本的状态有很多，正侧斜，打开合上，书堆等等，可能需要的样本得很多才能训练好。
或许应该分为几个词：读书（单个书本，打开书本读书），书堆（多本书）

所以可以搜寻一下书本的数据集，单单靠自己搞太累了。

2024年4月10日13:06:50

我希望能够打开标准数据集的标签，看看标标签的规范，但失败，重新安装labelme，用标准官方的labelme试试能不能打开

最后还是不能，结果是使用python脚本解析标注数据并在图片上绘制边界框，

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-1.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-2.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-3.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-4.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-5.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-6.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-7.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-8.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-9.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-10.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-11.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-12.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-13.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-14.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-15.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-16.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-17.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-18.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-19.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-20.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-21.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-22.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-23.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-24.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-25.png)

![alt text](/assets/blog_res/2024-4-8-raspberry_zhuangtaijiance3/image-26.png)

标准标准的数据集并非完美，我认为只是遵从一个规则，就是尽可能多的、多角度的提取“有用信息”，而无用的杂质，则越少越好，重复的可以不标。

接下来按照这个标准将2000张的图片标注，然后学习使用谷歌的额度，训练。





