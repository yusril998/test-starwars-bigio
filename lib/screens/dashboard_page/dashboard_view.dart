import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test2/blocs/Dashboard_bloc/dashboard_bloc.dart';
import 'package:test2/helpers/navigator.dart';
import 'package:test2/screens/dashboard_page/component/item_menu.dart';
import 'package:test2/screens/films/films.dart';
import 'package:test2/screens/people/people.dart';
import 'package:test2/screens/planets/planets.dart';
import 'package:test2/screens/species/species.dart';
import 'package:test2/screens/starship/starship.dart';
import 'package:test2/screens/vehicles/vehicles.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final DashboardBloc _dashboardBloc = DashboardBloc();
  

  @override
  void initState() {
    _dashboardBloc.add(DashboardEvent(0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => _dashboardBloc,
      child: BlocListener<DashboardBloc, DashboardState>(
          // ignore: missing_return
          listener: (context, state) async {
            if (state is DashboardState) {
            } else {}
            // do stuff here based on BlocA's state
          },
          child: main(context)),
    );
  }

  Widget main(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: mainBg,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: blue,
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(top: Sizes.s80),
                  width: Sizes.s300,
                  child: Image.asset("assets/images/meditation_bg.png")),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Stars Wars",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Welcome !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                     SizedBox(
                       width: size.width * .40,
                       child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in nunc lacus. Phasellus ac porttitor tellus.  sed convallis nisi volutpat ac. Nam turpis nisl.",
                        style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                     ),
                    SizedBox(
                      width: size.width * .5,
                      height:Sizes.s25, // it just take the 50% width
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          icon: Icons.movie,
                          title: "Films",
                          press: () => nextScreen(context, FilmsScreen()),
                        ),
                        SeassionCard(
                          icon: FontAwesomeIcons.users,
                          title: "People",
                          press: () => nextScreen(context, PeopleScreen()),
                        ),
                        SeassionCard(
                           icon: FontAwesomeIcons.globe,
                          title: "Planets",
                          press: () => nextScreen(context, PlanetsScreen()),
                        ),
                        SeassionCard(
                          icon: FontAwesomeIcons.spider,
                          title: "Species",
                          press: () => nextScreen(context, SpeciesScreen()),
                        ),
                        SeassionCard(
                          icon: FontAwesomeIcons.rocket,
                          title: "Starships",
                          press: () => nextScreen(context, StarshipScreen()),
                        ),
                        SeassionCard(
                          icon: FontAwesomeIcons.plane,
                          title: "Vehicles",
                          press: () => nextScreen(context, VehiclesScreen()),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
