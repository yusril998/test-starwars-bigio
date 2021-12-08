import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test2/utils/app_sizes.dart';
import 'package:test2/utils/constants.dart';

class ImageHeaders extends StatefulWidget {
  List<String> cardList;
  ImageHeaders({
    Key key,
    @required this.cardList,
  }) : super(key: key);

  @override
  _ImageHeadersState createState() => _ImageHeadersState();
}

class _ImageHeadersState extends State<ImageHeaders> {
  int _currentIndex = 0;
 
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            options: CarouselOptions(
              //autoPlay: true,
              aspectRatio: 16 / 8,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: false,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: widget.cardList.map((a) {
              return item(a);
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(widget.cardList, (index, url) {
            return Container(
              width: _currentIndex == index ? 30 : 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _currentIndex == index
                    ? Colors.blue
                    : Colors.blue.withOpacity(0.3),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget item(String path) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: Sizes.s12),
      child: Image.asset(
        path,
        fit: BoxFit.fill,
      ),
    );
  }
}
