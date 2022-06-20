package com.crystallake.mixflutterapp

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel

class MyFlutterActivity : FlutterActivity() {

    /**
     * 注册渠道
     */
    private val methodChannel_toFlutter by lazy{
        MethodChannel(
            flutterEngine?.dartExecutor?.binaryMessenger,
            "toFlutterChannelName"
        )
    }



}