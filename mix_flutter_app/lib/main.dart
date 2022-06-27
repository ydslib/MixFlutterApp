import 'package:flutter/material.dart';
import 'package:mix_flutter_app/page/home_page.dart';

import 'common/crouter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'default',
      theme: defaultTheme,
      home: HomePage(
        title: "主页",
      ),
      routes: routeTable,
    );
  }
}

final ThemeData defaultTheme = ThemeData(primaryColor: Colors.lightBlue);
