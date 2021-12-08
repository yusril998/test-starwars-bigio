import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/blocs/Films_bloc/films_bloc.dart';
import 'package:test2/helpers/navigator.dart';
import 'package:test2/respons/FilmsRespons/FilmsResponse.dart';
import 'package:test2/screens/components/header_with_seachbox.dart';
import 'package:test2/screens/films/components/film_item.dart';
import 'package:test2/screens/films/detail_films.dart';
import 'package:test2/screens/widgets/showcase.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/cons_colors.dart';

class FilmsScreen extends StatefulWidget {
  const FilmsScreen({Key key}) : super(key: key);

  @override
  _FilmsScreenState createState() => _FilmsScreenState();
}

class _FilmsScreenState extends State<FilmsScreen> {
  final FilmsBloc _d = FilmsBloc();
  List<FilmsResponse> list = [];
  List<FilmsResponse> searchResult = [];
  TextEditingController controller = new TextEditingController();
  @override
  void initState() {
    _d.add(FilmsEvent("1"));
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
      if (userDetail.title.contains(text)) searchResult.add(userDetail);
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext c) {
    /*24 is for notification bar on Android*/

    return BlocProvider<FilmsBloc>(
      create: (context) => _d,
      child: BlocListener<FilmsBloc, FilmsState>(
        // ignore: missing_return
        listener: (context, state) async {
          if (state is FilmsLoading) {
            showLoading(context);
          } else if (state is FilmsSuccess) {
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
                            return FilmItem(
                              detail: searchResult[index],
                              press: () => name(list[index]),
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
                            return FilmItem(
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

  void name(FilmsResponse detail) {
    nextScreen(
        context,
        DetailFilms(
          detail: detail,
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        'Films',
        style: Theme.of(context).textTheme.headline5.copyWith(
            color: Colors.white,
            fontSize: FontSize.s19,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
