// ignore_for_file: non_constant_identifier_names, unused_field

import 'package:car_agency/app/modules/BrandDetailsDescription/views/BrandDetaisDescriptionWidgets/cover.dart';
import 'package:flutter/material.dart';

import '../../../../theme.dart';
import 'BrandDetaisDescriptionWidgets/BrandList.dart';

class BrandDetailsDescriptionView extends StatefulWidget {
  const BrandDetailsDescriptionView({Key? key}) : super(key: key);

  @override
  _BrandDetailsDescriptionViewState createState() =>
      _BrandDetailsDescriptionViewState();
}

class _BrandDetailsDescriptionViewState
    extends State<BrandDetailsDescriptionView> {
  AnimationController _ColorAnimationController =
      AnimationController(vsync: AnimatedListState());

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
    _iconColorTween = ColorTween(begin: AppTheme.white, end: AppTheme.white)
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
                    CoverBrandDetailsDescription(),
                    BRandList(),
                    SizedBox(
                      height: 100,
                    )
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
                          Color(0xff000000).withOpacity(.9),
                          Color(0xff000000).withOpacity(.7),
                          Color(0xff000000).withOpacity(.5),
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
      bottomSheet: Container(
        child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe7AU5PQNIHJxnzIrEvIEL2mfrnanZ1tdnq18BbRYcch77Yq18n7JhTT-q5jCcaHSQK8M&usqp=CAU",
            width: double.infinity,
            height: 100,
            fit: BoxFit.fill),
      ),
    );
  }
}
