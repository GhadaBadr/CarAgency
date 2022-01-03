// ignore_for_file: file_names, unused_field

import 'package:flutter/material.dart';

import '../../../../../drawer.dart';
import 'browsebybodyType.dart';
import 'browsebybrand.dart';
import 'dealershipsSlider.dart';
import 'newagency.dart';
import 'video.dart';

// ignore: camel_case_types
class appbar extends StatefulWidget {
  appbar({Key? key}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

// ignore: camel_case_types
class _appbarState extends State<appbar> {
  // ignore: non_constant_identifier_names
  AnimationController _ColorAnimationController =
      AnimationController(vsync: AnimatedListState());
  // ignore: non_constant_identifier_names
  AnimationController _TextAnimationController =
      AnimationController(vsync: AnimatedListState());
  late Animation _colorTween;
  late Animation _iconColorTween;
  late Animation<Offset> _transTween;

  @override
  void initState() {
    _ColorAnimationController = AnimationController(
        vsync: AnimatedListState(), duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Color(0xff4852c1))
        .animate(_ColorAnimationController);
    _iconColorTween = ColorTween(begin: Colors.white, end: Colors.white)
        .animate(_ColorAnimationController);

    _TextAnimationController = AnimationController(
        vsync: AnimatedListState(), duration: Duration(seconds: 0));

    _transTween = Tween(begin: Offset(-10, 40), end: Offset(-10, 0))
        .animate(_TextAnimationController);

    super.initState();
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 350);

      _TextAnimationController.animateTo(
          (scrollInfo.metrics.pixels - 350) / 50);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: NotificationListener<ScrollNotification>(
        onNotification: _scrollListener,
        child: Container(
          color: Theme.of(context).primaryColor,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Dealershipsslider(),
                    Browsebybodytype(),
                    Browsebybrand(),
                    Newagency(),
                    video()
                  ],
                ),
              ),
              Container(
                height: 90,
                child: AnimatedBuilder(
                  animation: _ColorAnimationController,
                  builder: (context, child) => AppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(''),
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Color(0xff000000).withOpacity(1),
                          Color(0xff4852c1),
                          Color(0xff4852c1).withOpacity(1),
                          Color(0xff4852c1).withOpacity(0.7),
                          Color(0xff4852c1).withOpacity(0.4),
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        //stops: [0, 0.2, 0.8, 1],
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
