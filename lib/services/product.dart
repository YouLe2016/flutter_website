import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_website/conf/data.dart';

Future<List> getProducts([int page = 0]) async {
//  var url = '${IP + PORT}/?action=getProducts&page=$page';
//  var result = await get(url);
//  var json = jsonDecode(result.body);
//  debugPrint(json);

  debugPrint("获取中");
  var response = Future.delayed(Duration(seconds: 1), () {
    return jsonEncode(products);
  });

  var json = jsonDecode(await response);
  debugPrint(json.toString());
  return json['items'];
}
