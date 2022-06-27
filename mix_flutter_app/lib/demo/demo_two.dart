//dialog

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import '../common/common_dialog.dart';

class DemoPageTwo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DialogDemo();
}

class _DialogDemo extends State<DemoPageTwo> {
  List listDataSource = [
    'AlertDialog',
    'SimpleDialog',
    'BottomSheet',
    '自定义Dialog',
    '权限弹窗1'
  ];

  Widget _getListDataSource(context, index) {
    return Column(
      children: [
        ListTile(
          title: Text(listDataSource[index]),
          onTap: () {
            if (listDataSource[index] == 'AlertDialog') {
              _alertDialog();
            } else if (listDataSource[index] == 'SimpleDialog') {
              _simpleDialog();
            } else if (listDataSource[index] == 'BottomSheet') {
              _modalButtomSheet();
            } else if (listDataSource[index] == '自定义Dialog') {
              showDialog(
                  context: context,
                  builder: (context) {
                    return MyDialog("title", "content");
                  });
            } else if (listDataSource[index] == '权限弹窗1') {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CommonDialog(
                      type: CommonDialog.MODULE_FOUR,
                      content: "添加专属顾问二维码",
                      subContent: "提前了解上课信息",
                      imageUrl: "https://scpic.chinaz.net/files/pic/pic9/202004/zzpic24187.jpg",
                      confirm: (){
                        Fluttertoast.showToast(msg: "你同意了权限请求");
                      },
                      cancel: (){
                        Fluttertoast.showToast(msg: "你不同意了权限请求");
                      },
                    );
                  });
            }
          },
        )
      ],
    );
  }

  _alertDialog() async {
    var alertDialogs = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("提示"),
            content: const Text("确定要删除吗？"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, "Cancel");
                  },
                  child: const Text("取消")),
              TextButton(
                  onPressed: () => Navigator.pop(context, "Yes"),
                  child: const Text("确定")),
            ],
          );
        });
    return alertDialogs;
  }

  _simpleDialog() async {
    var simpleDialog = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("提示"),
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Option1")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Option2")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Option3"))
            ],
          );
        });
    return simpleDialog;
  }

  _modalButtomSheet() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("设置"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("主页"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading: const Icon(Icons.message),
                  title: const Text("信息"),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Dialog"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: listDataSource.length, itemBuilder: _getListDataSource),
      ),
    );
  }
}

class MyDialog extends Dialog {
  String? title;
  String? content;

  MyDialog(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      child: Text("$title"),
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () => Navigator.pop(context),
                      ),
                      alignment: Alignment.topRight,
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                child: Text(
                  "$content",
                  textAlign: TextAlign.left,
                ),
                padding: EdgeInsets.all(10),
              )
            ],
          ),
        ),
      ),
      type: MaterialType.transparency,
    );
  }
}
