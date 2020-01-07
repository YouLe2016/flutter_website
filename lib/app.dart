import 'package:flutter/material.dart';
import 'package:flutter_website/pages/about_us_page.dart';
import 'package:flutter_website/pages/home_page.dart';
import 'package:flutter_website/pages/news_page.dart';
import 'package:flutter_website/pages/product_page.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  var _curIndex = 0;
  var pages = [
    HomePage(),
    ProductPage(),
    NewsPage(),
    AboutUsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter企业站'),
        leading: Icon(Icons.home),
        actions: <Widget>[
          /*Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ),*/
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: pages[_curIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curIndex,
        //通过fixedColor设置选中item的颜色
        type: BottomNavigationBarType.fixed, // 设置item的显示模式
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('产品'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new),
            title: Text('新闻'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment),
            title: Text('关于我们'),
          ),
        ],
        onTap: (index) {
          setState(() {
            debugPrint('index=$index');
            _curIndex = index;
          });
        },
      ),
    );
  }
}
