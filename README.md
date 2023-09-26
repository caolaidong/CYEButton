# CYEButton
基于UIButton封装的一个轻量级Button，解决重复点击、连续点击问题.



## Usage
您可以选择直接使用CYEButton，或者继承CYEButton，设置invalidTime.

### 设置恢复可点击状态所需时间
~~~swift
let btn = CYEButton(type: .custom)
//点击后开始计时，2秒后恢复可点击状态
btn.invalidTime = 2
~~~
### 恢复可点击状态
~~~swift
//一般情况您不需要调用此方法，当CYEButton销毁时，会自动销毁其中的定时器。
//假设invalidTime设置为10秒后可以点击，但是当5秒时，您需要CYEButton可以接受点击，可以调用如下方法。
btn.resumeInteractive()
~~~
## Installation

CocoaPods:

~~~
pod 'CYEButton'
~~~
