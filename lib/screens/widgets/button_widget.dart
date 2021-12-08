import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test2/screens/widgets/loading_widget.dart';
import 'package:test2/utils/cons_colors.dart';

class ButtonWidget extends StatelessWidget {
  String buttonName;
  ValueChanged<bool> onTap;
  BuildContext maincontext;
  Color color;
  bool isLoading;
  ButtonWidget(
      {Key key,
      @required this.buttonName,
      @required this.onTap,
      @required this.maincontext,
      this.color,
      this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(true),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color ?? mainColor, borderRadius: BorderRadius.circular(7)),
        child: !isLoading || isLoading == null
            ? Text(buttonName,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.white))
            : LoadingWidget(Colors.white),
      ),
    );
  }
}
