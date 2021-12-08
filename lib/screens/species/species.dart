import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/blocs/Species_bloc/Species_bloc.dart';
import 'package:test2/helpers/navigator.dart';
import 'package:test2/respons/SpeciesRespons/SpeciesResponse.dart';
import 'package:test2/screens/components/header_with_seachbox.dart';
import 'package:test2/screens/species/components/species_item.dart';
import 'package:test2/screens/species/detail_species.dart';
import 'package:test2/screens/widgets/showcase.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({Key key}) : super(key: key);

  @override
  _SpeciesScreenState createState() => _SpeciesScreenState();
}

class _SpeciesScreenState extends State<SpeciesScreen> {
  final SpeciesBloc _d = SpeciesBloc();
  List<SpeciesResponse> list = [];
  List<SpeciesResponse> searchResult = [];
  TextEditingController controller = new TextEditingController();
  @override
  void initState() {
    _d.add(SpeciesEvent("1"));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  onSearchTextChanged(String text) async {
    searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    list.forEach((userDetail) {
      if (userDetail.name.toLowerCase().contains(text.toLowerCase())) searchResult.add(userDetail);
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext c) {
    /*24 is for notification bar on Android*/

    return BlocProvider<SpeciesBloc>(
      create: (context) => _d,
      child: BlocListener<SpeciesBloc, SpeciesState>(
        // ignore: missing_return
        listener: (context, state) async {
          if (state is SpeciesLoading) {
            showLoading(context);
          } else if (state is SpeciesSuccess) {
            setState(() {
              list = state.data;
            });
            Navigator.of(context).pop();
          } else {
            Navigator.of(context).pop();
          }
        },
        child: mainContent(context),
      ),
    );
  }

  Widget mainContent(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: mainBg,
        appBar: buildAppBar(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderWithSearchBox(
                  size: size,
                  onChange: (value) => onSearchTextChanged(value),
                  controller: controller,
                ),
                SizedBox(height: Sizes.s12),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Sizes.s12),
                  child: searchResult.length != 0 || controller.text.isNotEmpty
                      ? new ListView.separated(
                          itemCount: searchResult.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 0,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return SpeciesItem(
                              detail: searchResult[index],
                              press: () => name(searchResult[index]),
                            );
                          },
                        )
                      : new ListView.separated(
                          itemCount: list.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 0,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return SpeciesItem(
                              detail: list[index],
                              press: () => name(list[index]),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ));
  }

   void name(SpeciesResponse detail) {
    nextScreen(
        context,
        DetailSpecies(detail:detail));
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        'Species',
        style: Theme.of(context).textTheme.headline5.copyWith(
            color: Colors.white,
            fontSize: FontSize.s19,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

