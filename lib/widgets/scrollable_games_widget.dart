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
        scrollDirection: Axis.horizontal,
        children: gamesData.map((_game) {
          return Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: height * 0.80,
                width: width * 0.30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(_game.images![0].url.toString()),
                )),
              ),
            ],
          ));
        }).toList(),
      ),
    );
  }
}
