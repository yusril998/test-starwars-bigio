import 'package:flutter/material.dart';
import 'package:test2/respons/FilmsRespons/FilmsResponse.dart';

import 'package:test2/screens/components/appBarCustom.dart';
import 'package:test2/screens/components/imagesHeader.dart';
import 'package:test2/screens/components/label_content.dart';
import 'package:test2/screens/components/titleHead.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class DetailFilms extends StatelessWidget {
  final FilmsResponse detail;

  const DetailFilms({Key key, this.detail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      appBar: AppBarCustom(context: context, title: "Detail Films"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageHeaders(cardList: [
              "assets/images/devel.png",
              "assets/images/devel.png",
              "assets/images/devel.png"
            ]),
            Container(
              margin: EdgeInsets.only(top: Sizes.s20),
              padding: EdgeInsets.only(
                top: Sizes.s12,
                left: Sizes.s30,
                right: Sizes.s30,
              ),
              // height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: Sizes.s15),
                  TitleHead(title: detail.title),
                  SizedBox(height: Sizes.s10),
                  Divider(
                    thickness: 0.5,
                    color: mainBlack,
                  ),
                  LabelContent(title: "Director", value: detail.director),
                   LabelContent(title: "Producer", value: detail.producer),
                  LabelContent(
                      title: "Episode", value: detail.episodeId.toString()),
                  LabelContent(
                      title: "Release Date", value: detail.releaseDate),
                  Text(
                    "Opening Crawl",
                    style: Theme.of(context).textTheme.button.copyWith(
                        color: mainBlack,
                        fontSize: FontSize.s15,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Sizes.s5),
                    child: Text(
                      detail.openingCrawl,
                      style: TextStyle(
                          height: 1.5, fontSize: Sizes.s12, color: mainBlack),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
