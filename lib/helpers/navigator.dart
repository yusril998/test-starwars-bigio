import 'package:flutter/material.dart';

void nextScreen(context, page) async {
  Navigator.push(context, routeTo(page));
}

Future nextScreenRet(context, page) async {
  return Navigator.push(context, routeTo(page));
}

void nextReplacementScreen(context, page) async {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
}

void previousScreen(context, page) async {
  Navigator.pop(context, MaterialPageRoute(builder: (_) => page));
}

void backScreen(context) async {
  Navigator.of(context).pop();
}

void popUntil(context, page) async {
  Navigator.of(context).popUntil((_) => page);
}

Route routeTo(data) {
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 100),
    pageBuilder: (context, animation, secondoryAnimation) => data,
    transitionsBuilder: (context, animation, scondaryAnimation, child) {
      var begin = Offset(0.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
