---
title: 聚焦切換視窗容器操作
nav_order: 5020
has_children: false
parent: 使用情境(客製)
grand_parent: 使用情境
---


# 聚焦切換視窗容器操作

## 注意事項

一般的狀況下，聚焦切換，單純的指的是「視窗」，

但當您做了更細部的分割後，就會有「視窗容器」的概念加入。

一個「視窗容器」就會包含有多個「視窗」。

請參考「[6.2. Splitting containers](https://i3wm.org/docs/userguide.html#_splitting_containers)」和「[6.4. Focusing containers](https://i3wm.org/docs/userguide.html#_focusing_moving_containers)」的說明。


* [前後聚焦切換](#前後聚焦切換)
* [上下左右聚焦切換](#上下左右聚焦切換)
* [kjhl聚焦切換](#kjhl聚焦切換)


* [設定片段](https://github.com/samwhelp/note-about-i3wm/blob/gh-pages/_demo/config/i3wm-config/main/config/i3/gen/i3wm-gen-rc/Section/Subject/Window/Keybind/Focus.conf)


## 前後聚焦切換

> 注意當做了更細部的切割後，「前後聚焦切換」只會在該容器的「前後視窗切換」，這時就要改用「上下左右聚焦切換」。

| 按鍵組合  | 功能                   | 執行指令               |
| ----------| ---------------------- | ---------------------- |
| `Win + a` | 聚焦切換到前面一個視窗 | `focus prev` (i3 內建) |
| `Win + s` | 聚焦切換到後面一個視窗 | `focus next` (i3 內建) |


| 按鍵組合  | 功能                   | 執行指令               |
| --------- | ---------------------- | ---------------------- |
| `Win + [` | 聚焦切換到前面一個視窗 | `focus prev` (i3 內建) |
| `Win + ]` | 聚焦切換到後面一個視窗 | `focus next` (i3 內建) |


## 上下左右聚焦切換

| 按鍵組合      | 功能               | 執行指令                |
| ------------- | ------------------ | ----------------------- |
| `Win + Up`    | 聚焦切換到上邊視窗容器 | `focus up` (i3 內建)    |
| `Win + Down`  | 聚焦切換到下邊視窗容器 | `focus down` (i3 內建)  |
| `Win + Left`  | 聚焦切換到左邊視窗容器 | `focus left` (i3 內建)  |
| `Win + Right` | 聚焦切換到右邊視窗容器 | `focus right` (i3 內建) |


## kjhl聚焦切換

| 按鍵組合  | 功能               | 執行指令                |
| ----------| ------------------ | ----------------------- |
| `Win + k` | 聚焦切換到上邊視窗容器 | `focus up` (i3 內建)    |
| `Win + j` | 聚焦切換到下邊視窗容器 | `focus down` (i3 內建)  |
| `Win + h` | 聚焦切換到左邊視窗容器 | `focus left` (i3 內建)  |
| `Win + l` | 聚焦切換到右邊視窗容器 | `focus right` (i3 內建) |


## 父子視窗容器聚焦切換

| Keybind   | Action                   | Command                  |
| --------- | ------------------------ | ------------------------ |
| `Win + p` | 聚焦到父視窗容器         | `focus parent` (i3 內建) |
| `Win + c` | 聚焦到子視窗容器或子視窗 | `focus child` (i3 內建)  |


## 在浮動視窗或平鋪視窗之間聚焦切換

| Keybind   | Action                           | Command                 |
| --------- | -------------------------------- | ----------------------- |
| `Win + v` | 在浮動視窗或平鋪視窗之間聚焦切換 | `mode_toggle` (i3 內建) |


## 參考連結

* i3 User’s Guide / [6.4. Focusing containers](https://i3wm.org/docs/userguide.html#_focusing_moving_containers)
* i3 User’s Guide / [6.2. Splitting containers](https://i3wm.org/docs/userguide.html#_splitting_containers)
* i3 User’s Guide / [3. Tree](https://i3wm.org/docs/userguide.html#_tree)
