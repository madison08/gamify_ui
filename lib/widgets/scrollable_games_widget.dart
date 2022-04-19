// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../data.dart';

class ScrollableGameWidget extends StatelessWidget {
  final double height;
  final double width;
  final double? showTitle;

  final List<Game> gamesData;

  ScrollableGameWidget(
      {required this.height,
      required this.width,
      this.showTitle,
      required this.gamesData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: gamesData.map((_game) {
          return Container(
              height: height,
              // width: width * 0.40,
              padding: EdgeInsets.only(
                right: width * 0.030,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: height * 0.80,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          _game.images![0].url.toString(),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    _game.title.toString(),
                    maxLines: 2,
                  ),
                ],
              ));
        }).toList(),
      ),
    );
  }
}
