import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/respons/FilmsRespons/FilmsResponse.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class FilmItem extends StatelessWidget {
  const FilmItem({
    Key key,
    @required this.detail,
    @required this.press,
  }) : super(key: key);

  final FilmsResponse detail;

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
                  Icons.movie,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail.title,
                      style: Theme.of(context).textTheme.display1.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: Sizes.s15,
                          color: mainBlack),
                    ),
                    SizedBox(height: Sizes.s5),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.calendar,
                          color: mainGrey,
                          size: Sizes.s10,
                        ),
                        SizedBox(width: Sizes.s5),
                        Text(
                          detail.releaseDate,
                          style: Theme.of(context).textTheme.display1.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: mainGrey,
                              ),
                        ),
                        SizedBox(width: Sizes.s10),
                        Icon(
                          FontAwesomeIcons.personBooth,
                          color: mainGrey,
                          size: Sizes.s10,
                        ),
                        SizedBox(width: Sizes.s5),
                        Text(
                          detail.producer,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.display1.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: mainGrey,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
