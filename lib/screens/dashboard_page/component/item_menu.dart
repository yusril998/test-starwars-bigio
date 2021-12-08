import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test2/utils/cons_colors.dart';

class SeassionCard extends StatelessWidget {
  final String title;
 final IconData icon;
  final Function press;
  const SeassionCard({

    Key key,
    this.title,
    @required this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: mainColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        //shape: BoxShape.circle,
                      //  border: Border.all(color: mainColor),
                      ),
                      child: Icon(
                        icon,
                        color:  mainColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                     title,
                      style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
