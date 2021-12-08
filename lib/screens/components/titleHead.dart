import 'package:flutter/material.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class TitleHead extends StatelessWidget {
  final Color color;
  final String title;
  const TitleHead({
    Key key,
    this.color,
    // by default isSelected is false
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: Text(
        title.toString(),
        style: Theme.of(context).textTheme.button.copyWith(
            color: mainBlack, fontSize: FontSize.s20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
