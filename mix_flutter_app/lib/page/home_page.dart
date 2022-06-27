import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/crouter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _MyHomePage();
}

class _MyHomePage extends State<HomePage> {
  @override
  void initState() {
    debugPrint("initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(375, 812),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text("Android原生与Flutter之间交互"),
            onPressed: () {
              Navigator.of(context).pushNamed(RouterPath.MAIN_PAGE,
                  arguments: {"name": "打开MainPage页面"});
            },
          ),
          ElevatedButton(
            child: const Text("页面间跳转和传惨测试"),
            onPressed: () {
              Navigator.of(context).pushNamed(RouterPath.FIRST_SCREEN,
                  arguments: "打开FirstScreen页面");
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouterPath.SETTING);
              },
              child: const Text("设置页面")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouterPath.DEMO);
              },
              child: const Text("Demo"))
        ],
      ),
    );
  }
}
