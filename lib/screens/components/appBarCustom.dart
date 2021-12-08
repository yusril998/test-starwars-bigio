import 'package:flutter/material.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final BuildContext context;
  final String title;
  AppBarCustom({
    Key key,
    this.context,
    // by default isSelected is false
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: mainColor,
      elevation: 0,
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .button
              .copyWith(color: Colors.white, fontSize: Sizes.s15)),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[],
    );
  }

  final double appBarHeight = Sizes.s50;
  @override
  get preferredSize => Size.fromHeight(appBarHeight);
}
