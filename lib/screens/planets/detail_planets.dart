import 'package:flutter/material.dart';
import 'package:test2/respons/PlanetsRespons/PlanetsResponse.dart';

import 'package:test2/screens/components/appBarCustom.dart';
import 'package:test2/screens/components/imagesHeader.dart';
import 'package:test2/screens/components/label_content.dart';
import 'package:test2/screens/components/titleHead.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class DetailPlanets extends StatelessWidget {
  final PlanetsResponse detail;

  const DetailPlanets({Key key, this.detail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      appBar: AppBarCustom(context: context, title: "Detail Planets"),
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
                  LabelContent(title: "Climate", value: detail.climate),
                  LabelContent(title: "Diameter", value: detail.diameter),
                  LabelContent(title: "Gravity", value: detail.gravity),
                  LabelContent(
                      title: "Orbital Period", value: detail.orbitalPeriod),
                  LabelContent(title: "Population", value: detail.population),
                  LabelContent(
                      title: "Rotation Period", value: detail.rotationPeriod),
                  LabelContent(
                      title: "Surface Water", value: detail.surfaceWater),
                  LabelContent(title: "Terrain", value: detail.terrain),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
