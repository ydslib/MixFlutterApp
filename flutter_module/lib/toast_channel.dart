import 'package:oktoast/oktoast.dart';
import 'package:webview_flutter/platform_interface.dart';

class ToastChannel implements JavascriptChannel {
  @override
  String get name => "toast_channel";

  @override
  JavascriptMessageHandler get onMessageReceived => handleMsg;

  void handleMsg(JavascriptMessage message) {
    showToast(message.message);
  }
}