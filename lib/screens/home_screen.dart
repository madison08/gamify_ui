// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gamify_flutter_ui/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _deviceHeight;
  var _deviceWidth;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        _featuredgamesWidget(),
      ],
    ));
  }

  Widget _featuredgamesWidget() {
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _deviceWidth,
      child: Container(
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: featuredGames.map((_game) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    _game.images![0].url.toString(),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
