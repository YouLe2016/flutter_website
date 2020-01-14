import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../res.dart';

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width * 1080 / 1920;
    return Container(
      width: width,
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imgBanners[index],
//          fit: BoxFit.fill,
          );
        },
        itemCount: imgBanners.length,
      ),
    );
  }
}
