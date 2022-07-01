package com.crystallake.mixflutterapp

import android.content.Context
import android.webkit.JavascriptInterface
import android.widget.Toast
import org.json.JSONObject

class JsBridge(val context: Context) {

    @JavascriptInterface
    fun hello(msg: String?): String {
        println("test")
        Toast.makeText(context, "test$msg", Toast.LENGTH_SHORT).show()
        val jsonStr =
            "{\"code\":200,\"status\":\"OK\",\"results\":{\"datetime\":[{\"times\":{\"Imsak\":\"05:21\",\"Sunrise\":\"06:43\",\"Fajr\":\"05:31\",\"Dhuhr\":\"12:32\",\"Asr\":\"15:51\",\"Sunset\":\"18:22\",\"Maghrib\":\"18:32\",\"Isha\":\"19:33\",\"Midnight\":\"23:57\"},\"date\":{\"timestamp\":1640736000,\"gregorian\":\"2021-12-29\",\"hijri\":\"1443-05-25\"}}],\"location\":{\"latitude\":10.516667366027832,\"longitude\":7.433332920074462,\"elevation\":611.0,\"city\":\"Kaduna\",\"country\":\"Nigeria\",\"country_code\":\"NG\",\"timezone\":\"Africa/Lagos\",\"local_offset\":1.0},\"settings\":{\"timeformat\":\"HH:mm\",\"school\":\"Ithna Ashari\",\"juristic\":\"Shafii\",\"highlat\":\"None\",\"fajr_angle\":18.0,\"isha_angle\":18.0}}}"
        return jsonStr
    }

    @JavascriptInterface
    fun getSearchData(): String {
        val jsonStr ="{\n" +
                "\t\"code\":200,\n" +
                "\t\"status\":\"OK\",\n" +
                "\t\"results\":[{\n" +
                "\t\t\"title\":\"Json在线解析\",\n" +
                "\t\t\"subTitle\":\"子标题\"\n" +
                "\t},{\n" +
                "\t\t\"title\":\"Kotlin书籍\",\n" +
                "\t\t\"subTitle\":\"2021年出版\"\n" +
                "\t},{\n" +
                "\t\t\"title\":\"Java书籍\",\n" +
                "\t\t\"subTitle\":\"2021年出版\"\n" +
                "\t},{\n" +
                "\t\t\"title\":\"Flutter书籍\",\n" +
                "\t\t\"subTitle\":\"2021年出版\"\n" +
                "\t}\n" +
                "\t]\n" +
                "}"
        return jsonStr
    }

    @JavascriptInterface
    fun getHtmlData():String{
        return "<div>\n" +
                "        <h1>Demo Page</h1>\n" +
                "        <p>This is a fantastic product that you should buy!</p>\n" +
                "        <h3>Features</h3>\n" +
                "        <ul>\n" +
                "          <li>It actually works</li>\n" +
                "          <li>It exists</li>\n" +
                "          <li>It doesn't cost much!</li>\n" +
                "          <li><flutter></flutter></li>\n" +
                "        </ul>\n" +
                "        <p><a href='https://github.com'><font color=\"red\">websites</font></a></p>\n" +
                "        <!--You can pretty much put any html in here!-->\n" +
                "      </div>"
    }

}