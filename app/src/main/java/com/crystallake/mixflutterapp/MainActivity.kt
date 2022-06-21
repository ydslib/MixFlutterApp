package com.crystallake.mixflutterapp

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.databinding.DataBindingUtil
import com.crystallake.mixflutterapp.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    var mBinding: ActivityMainBinding? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        mBinding = DataBindingUtil.setContentView(this, R.layout.activity_main)

        mBinding?.btn?.setOnClickListener {
            val intent = Intent(this@MainActivity, MyFlutterActivity::class.java)
            startActivity(intent)
        }

//        mBinding?.dWebView?.loadUrl("localhost:8080/winit/web/web/index.html")

    }
}