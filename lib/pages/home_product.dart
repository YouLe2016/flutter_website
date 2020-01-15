import 'package:flutter/material.dart';

class HomeProductPage extends StatelessWidget {
  final List products;

  HomeProductPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('最新产品', style: TextStyle(fontSize: 16)),
          Wrap(
            spacing: 2,
            children: products.map((item) {
              return Column(children: <Widget>[
                Text(item['name']),
                Text(item['type']),
//                Text(item['desc']),
                Text(item['imageUrl']??"为空"),
              ]);
            }).toList(),
          )
        ],
      ),
    );
  }
}
