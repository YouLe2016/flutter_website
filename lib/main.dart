import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart';

import 'loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      showSemanticsDebugger:true,
//      debugShowMaterialGrid:true,
      title: 'Flutter企业站',
      theme: ThemeData(
        primarySwatch: Colors.red,
//        primaryColor: Colors.red,
      ),
      // 加载页面
      home: LoadingPage(),
      // 添加路由
      routes: {
        '/company_info': (context) => WebviewScaffold(
            url: 'https://www.baidu.com',
            appBar: AppBar(
              title: Text('公司介绍'),
            )),
        '/app': (context) => MyHomePage(title: 'Flutter Demo Home Page')
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            print('获取数据...');
            String url = "http://192.168.2.168:8080/?action=getProducts";
            var response = await get(url);
            var json = jsonDecode(response.body);
            print(json);
          },
          child: Text("获取商品信息"),
        ),
      ),
    );
  }
}
