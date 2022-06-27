import 'package:flutter/material.dart';

import '../demo/demo_two.dart';

final Map<String, WidgetBuilder> routeTable = {
  RouterPath.DEMO2: (context)=> DemoPageTwo(),

};

class RouterPath{
  static const String MAIN_PAGE = "/main_page";
  static const String FIRST_SCREEN = "/first_screen";
  static const String SECOND_SCREEN = "/second_screen";
  static const String SETTING = "/SETTING";
  static const String DEMO = "/demo";
  static const String DEMO1 = "/demo01";
  static const String DEMO2 = "/demo02";
}