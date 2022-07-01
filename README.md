# MixFlutterApp
Android原生和Flutter混合的App

# 分支
- dev: 原生加载flutterWeb，通过WebView加载html的方式加载FlutterWeb。代码内部的flutter_module模块可以去掉，没啥用。（1）原生传递Json数据到js，js将数据传递到flutter；(2)原生传递html标签数据到js，js将数据传递到flutter，flutter解析html标签显示数据。需要配合FlutterWeb使用，[flutter_web_demo](https://github.com/ydslib/flutter_web_demo),具体使用方式，后续有博客。

- main: 最基础的原生混合Flutter开发，需要引入Dart的sdk。通过跳转FlutterActivity加载Flutter。

- master：最基础的原生混合Flutter开发，需要引入Dart的sdk。通过跳转FlutterActivity加载Flutter。

