import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';


class PhotoChircle extends StatelessWidget {
  double height = Sizes.s60;
  double width =  Sizes.s60;
  String url = "";
  EdgeInsetsGeometry margin =
      EdgeInsets.symmetric(horizontal: Sizes.s10, vertical: Sizes.s7);
  PhotoChircle(
      {Key key, this.height, this.width, @required this.url, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(Sizes.s0_01),
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizes.s100),
        child: Image.asset(url.toString())
,
      ),
      margin: margin,
      decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: Sizes.s4,
              offset: Offset(
                Sizes.s2,
                Sizes.s2_30,
              ))
        ],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
    );
  }
}
