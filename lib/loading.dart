import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'res.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2000), () {
//      Navigator.of(context).pushNamed('/company_info');
      Navigator.of(context).pushReplacementNamed('/app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgLoading),
            fit: BoxFit.fill,
          ),
        ),
        child: Text(
          'Flutter企业站',
          style: TextStyle(
            fontSize: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}