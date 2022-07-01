package com.crystallake.mixflutterapp

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.webkit.WebSettings
import androidx.databinding.DataBindingUtil
import com.crystallake.mixflutterapp.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    var mBinding: ActivityMainBinding? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        mBinding = DataBindingUtil.setContentView(this, R.layout.activity_main)

        mBinding?.dWebView?.settings?.let {
            it.userAgentString = it.userAgentString + "winit"
            it.allowUniversalAccessFromFileURLs = true
            it.allowFileAccessFromFileURLs = true
            it.allowContentAccess = true
            it.allowFileAccess = true
            it.mixedContentMode = WebSettings.MIXED_CONTENT_ALWAYS_ALLOW
            it.javaScriptEnabled = true
        }
        val map: HashMap<String, String> = HashMap<String, String>()
        map.put("test", "ddddd")
        mBinding?.dWebView?.addJavascriptInterface(JsBridge(this),"searchData")


        mBinding?.btn?.setOnClickListener {
            mBinding?.dWebView?.loadUrl("http://10.99.17.134:8080/web/index.html")
        }
    }
}