import 'package:flutter/material.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class LabelContent extends StatelessWidget {
  final String title;
  final String value;
  const LabelContent({
    Key key,
    @required this.title,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Sizes.s15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: Sizes.s20),
            child: Text(
              title.toString(),
              style: Theme.of(context).textTheme.button.copyWith(
                  color: mainBlack,
                  fontSize: FontSize.s15,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Flexible(
            child: Text(
              value.toString(),
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.button.copyWith(
                  color: mainBlack,
                  fontSize: FontSize.s12,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
