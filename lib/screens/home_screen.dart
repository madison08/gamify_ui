// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gamify_flutter_ui/widgets/scrollable_games_widget.dart';
import '../data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _deviceHeight;
  var _deviceWidth;

  var _selectedPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedPage = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featuredgamesWidget(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _featuredgamesWidget() {
    return SizedBox(
      height: _deviceHeight * 0.50,
      width: _deviceWidth,
      child: PageView(
        onPageChanged: (_index) {
          setState(() {
            _selectedPage = _index;
          });
        },
        scrollDirection: Axis.horizontal,
        children: featuredGames.map((_game) {
          return Container(
            decoration: BoxDecoration(
              // color: Colors.yellow,
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
    );
  }

  Widget _gradientBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight * 0.75,
        width: _deviceWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(35, 45, 59, 1.0),
              Colors.transparent,
            ],
            stops: [0.65, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.05,
        vertical: _deviceHeight * 0.01,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _topBarWidget(),
          SizedBox(
            height: _deviceHeight * 0.13,
          ),
          _featuredGamesInfoWidget(),
          ScrollableGameWidget(
              height: _deviceHeight * 0.24,
              width: _deviceWidth,
              gamesData: games),
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
      height: _deviceHeight * 0.13,
      width: _deviceWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            Icons.menu,
            size: 30.0,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.search,
                size: 30.0,
              ),
              SizedBox(
                width: _deviceWidth * 0.03,
              ),
              Icon(
                Icons.notifications_none,
                size: 30.0,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _featuredGamesInfoWidget() {
    return SizedBox(
      height: _deviceHeight * 0.12,
      width: _deviceWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            featuredGames[_selectedPage].title.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: _deviceHeight * 0.040,
            ),
            maxLines: 2,
          ),
          SizedBox(
            height: _deviceHeight * 0.01,
          ),
          Row(
            children: featuredGames.map((_game) {
              bool _isActive =
                  _game.title == featuredGames[_selectedPage].title;
              print(_isActive);
              var _circleRadius = _deviceHeight * 0.004;
              print(_game);
              return Container(
                margin: EdgeInsets.only(
                  right: _deviceWidth * 0.015, //10.0,
                ),
                height: _circleRadius * 2,
                width: _circleRadius * 2,
                decoration: BoxDecoration(
                  color: _isActive ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
