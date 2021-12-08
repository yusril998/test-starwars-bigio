import 'package:flutter/material.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

import 'components/body.dart';

class OnDevelScreen extends StatelessWidget {


  const OnDevelScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mainBg,
      elevation: 0,
      
      title: Text("on develop",
          style: Theme.of(context)
              .textTheme
              .button
              .copyWith(color: blue, fontSize: Sizes.s15)),
      leading: SizedBox(),
      actions: <Widget>[],
    );
  }
}
