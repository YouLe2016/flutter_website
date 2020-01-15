import 'package:flutter/material.dart';
import 'package:flutter_website/services/product.dart';

import 'home_banner.dart';
import 'home_product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List products = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _getProduct();
    });
  }

  _getProduct() async {
    var list = await getProducts();
    products.addAll(list);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BannerWidget(),
        HomeProductPage(products),
      ],
    );
  }
}
