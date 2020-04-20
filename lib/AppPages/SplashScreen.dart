import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/AppThemes/CustomBGs/customBGs.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen(
      {Key key,
      this.layout,
      this.bgType,
      this.useSafeArea,
      this.logoImage,
      this.centerImage,
      this.bottomText})
      : super(key: key);

  final PageLayout layout;
  final GradientBGType bgType;
  final bool useSafeArea;
  final Image logoImage;
  final Image centerImage;
  final Widget bottomText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ssWithGradientBG(MediaQuery.of(context).size.width, layout, bgType,
          useSafeArea, logoImage, centerImage, bottomText),
    );
  }

  Widget ssWithGradientBG(
      double screenWidth,
      PageLayout layout,
      GradientBGType bgType,
      bool useSafeArea,
      Image logoImage,
      Image centerImage,
      Widget bottomText) {
    Widget mainWidget;

    switch (layout) {
      case PageLayout.SplashScreen_Layout01:
        mainWidget =
            _ssLayout1(screenWidth, bgType, logoImage, centerImage, bottomText);
        break;
      case PageLayout.SplashScreen_Layout02:
        mainWidget = _ssLayout2(null, bgType);
        break;
    }

    if (useSafeArea) {
      return SafeArea(child: mainWidget);
    }

    return mainWidget;
  }

  /// Layout 01
  /// 0. Gradient background
  /// 1. Logo on left-top corner
  /// 2. An image in middle
  /// 3. Text at center-bottom
  Widget _ssLayout1(double screenWidth, GradientBGType bgType, Image logoImage,
      Image centerImage, Widget bottomText) {
    // final fullHeight = MediaQuery.of(context).size.height;
    // final fullWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: GradientBGs().getBG(bgType),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 100,
            width: screenWidth,
            child: Center(
              child: bottomText,
            ),
          ),
          Center(child: Container(
            padding: EdgeInsets.all(90),
            child: centerImage
            )),
            Positioned(
              left: 10,
              width: 120,
              top: 30,
              child: logoImage,
            )
        ],
      ),
    );
  }

  /// Layout 02
  /// 0. Gradient background
  /// 1. Logo on left-top corner
  /// 2. An image in middle
  /// 3. Text at center-bottom
  Widget _ssLayout2(BuildContext context, GradientBGType bgType) {
    // final fullHeight = MediaQuery.of(context).size.height;
    // final fullWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: GradientBGs().getBG(bgType),
      ),
    );
  }
}

enum PageLayout {
  SplashScreen_Layout01,
  SplashScreen_Layout02,
}

class SplashScreen1 extends StatefulWidget {
  SplashScreen1({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fill,
            child: DecoratedBox(
              decoration: new GradientBGs().getBG(GradientBGType.BlueGradient),
            ),
          ),
          Positioned(
            top: 100,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.all(20),
              child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'could be a very long heading which could be used for testing puporses',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w100,
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
