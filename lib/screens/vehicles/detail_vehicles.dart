import 'package:flutter/material.dart';
import 'package:test2/respons/VehiclesRespons/VehiclesResponse.dart';

import 'package:test2/screens/components/appBarCustom.dart';
import 'package:test2/screens/components/imagesHeader.dart';
import 'package:test2/screens/components/label_content.dart';
import 'package:test2/screens/components/titleHead.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class DetailVehicles extends StatelessWidget {
  final VehiclesResponse detail;

  const DetailVehicles({Key key, this.detail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: mainBg,
      appBar: AppBarCustom(context: context, title: "Detail Vehicles"),
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
                  LabelContent(
                      title: "Cargo Capacity", value: detail.cargoCapacity),
                  LabelContent(title: "Consumables", value: detail.consumables),
                  LabelContent(
                      title: "CostInCredits", value: detail.costInCredits),
                  LabelContent(title: "Crew", value: detail.crew),
                  LabelContent(title: "Length", value: detail.length),
                  LabelContent(
                      title: "Manufacturer", value: detail.manufacturer),
                  LabelContent(
                      title: "Max Atmosphering Speed",
                      value: detail.maxAtmospheringSpeed),
                  LabelContent(title: "Model", value: detail.model),
                  LabelContent(title: "Passengers", value: detail.passengers),
                  LabelContent(
                      title: "Vehicles Class", value: detail.vehicleClass),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
