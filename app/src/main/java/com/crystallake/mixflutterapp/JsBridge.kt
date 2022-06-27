package com.crystallake.mixflutterapp

import android.content.Context
import android.webkit.JavascriptInterface
import android.widget.Toast

class JsBridge(val context: Context) {

    @JavascriptInterface
    fun hello(msg: String?): String {
        println("test")
        Toast.makeText(context, "test$msg", Toast.LENGTH_SHORT).show()
        return "Android native test"
    }
}