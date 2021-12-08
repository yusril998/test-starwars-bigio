import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/respons/PeopleRespons/PeopleResponse.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({
    Key key,
    @required this.detail,
    @required this.press,
  }) : super(key: key);

  final PeopleResponse detail;

  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: press,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 13.4),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 42,
                width: 43,
                decoration: BoxDecoration(
                  color: blue,
                  shape: BoxShape.circle,
                  border: Border.all(color: blue),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      detail.name,
                      style: Theme.of(context).textTheme.display1.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: FontSize.s15,
                          color: mainBlack),
                    ),
                  
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
