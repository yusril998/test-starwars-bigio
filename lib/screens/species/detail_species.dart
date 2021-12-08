import 'package:flutter/material.dart';
import 'package:test2/respons/SpeciesRespons/SpeciesResponse.dart';

import 'package:test2/screens/components/appBarCustom.dart';
import 'package:test2/screens/components/imagesHeader.dart';
import 'package:test2/screens/components/label_content.dart';
import 'package:test2/screens/components/titleHead.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class DetailSpecies extends StatelessWidget {
  final SpeciesResponse detail;

  const DetailSpecies({Key key, this.detail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      appBar: AppBarCustom(context: context, title: "Detail Species"),
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
                  TitleHead(title: detail.name),
                  SizedBox(height: Sizes.s10),
                  Divider(
                    thickness: 0.5,
                    color: mainBlack,
                  ),
                  LabelContent(title: "Average Height", value: detail.averageHeight),
                  LabelContent(title: "Average Lifespan", value: detail.averageLifespan),
                  LabelContent(title: "Classification", value: detail.classification),
                  LabelContent(
                      title: "Designation", value: detail.designation),
                  LabelContent(title: "Eye Colors", value: detail.eyeColors),
                  LabelContent(
                      title: "Hair Colors", value: detail.hairColors),
                  LabelContent(
                      title: "Language", value: detail.language),
                  LabelContent(title: "Skin Colors", value: detail.skinColors),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
