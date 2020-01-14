import 'package:flutter/material.dart';
import 'package:flutter_website/res.dart';

import 'home_banner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Image.asset(imgBanners[0]),
      BannerWidget(),
    ]);
  }
}
