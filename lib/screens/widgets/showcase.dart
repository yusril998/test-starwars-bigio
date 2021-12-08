import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/utils/cons_colors.dart';

bool requestClose = false;

Future<void> showLoading(BuildContext context) async {
  showDialog<dynamic>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext dialogContext) {
      dialogContext = context;
      return Material(
        type: MaterialType.transparency,
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: const SpinKitDoubleBounce(color: Colors.white),
          ),
        ),
      );
    },
  );
}

void showInFlushBar(BuildContext ct, int status, String value) {
  IconData icon = FontAwesomeIcons.info;
  Color color = Colors.blueAccent;
  if (status == 1) {
    icon = FontAwesomeIcons.checkCircle;
    color = blue;
  } else if (status == 2) {
    icon = Icons.warning;
    color = Colors.orangeAccent;
  }
  Flushbar(
    message: value,
    flushbarPosition: FlushbarPosition.TOP,
    reverseAnimationCurve: Curves.decelerate,
    forwardAnimationCurve: Curves.elasticOut,
    duration: Duration(seconds: 3),
    icon: Icon(
      icon,
      color: color,
    ),
  )..show(ct);
}
