import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Type of gradient
enum GradientBGType {
  /// Colors.white -> Colors.white30
  WhiteGradient,
  /// Colors.blueAccent -> Colors.blue
  BlueGradient,
  /// Colors.greenAccent -> Colors.green
  GreenGradient,
  /// Colors.redAccent -> Colors.red
  RedGradient,
  /// Colors.yellow -> Colors.amber
  YellowGradient,
  /// Colors.lightBlue -> Colors.blue
  SkyBlueGradient,
  /// Color.fromARGB(255, 130, 200, 255) -> Color.fromARGB(255, 130, 200, 255)
  LightBlueGradient,
  /// Color(0xFF7b4397) -> Color(0xFFdc2430) | Inspired from uiGradients.com
  VirginAmericaGradient,
  /// Color(0xFF6441A5) -> Color(0xFF2a0845) | Inspired from uiGradients.com
  TwitchGradient,
  /// Color(0xFF43cea2) -> Color(0xFF185a9d) | Inspired from uiGradients.com
  EndlessRiverGradient,
  /// Color(0xFFd38312) -> Color(0xFFa83279) | Inspired from uiGradients.com
  CrazyOrangeGradient,
  /// Color(0xFF70e1f5) -> Color(0xFFffd194) | Inspired from uiGradients.com
  ShoreGradient
}

class GradientBGs {

  /// Base method to create the gradient of your choice
  BoxDecoration getBG(GradientBGType bgType) {

    BoxDecoration selectedGradient;

    switch (bgType){
      case GradientBGType.WhiteGradient:
        selectedGradient = _greyGradient();
      break;
      case GradientBGType.BlueGradient:
        selectedGradient = _blueGradient();
      break;
      case GradientBGType.GreenGradient:
        selectedGradient = _greenGradient();
        break;
      case GradientBGType.RedGradient:
        selectedGradient = _redGradient();
        break;
      case GradientBGType.YellowGradient:
        selectedGradient = _yellowGradient();
        break;
      case GradientBGType.SkyBlueGradient:
        selectedGradient = _skyBlueGradient();
        break;
      case GradientBGType.LightBlueGradient:
        selectedGradient = _lightBlueGradient();
        break;        
      case GradientBGType.VirginAmericaGradient:
        selectedGradient = _virginAmericaGradient();
        break;
      case GradientBGType.TwitchGradient:
        selectedGradient = _twitchGradient();
        break;
      case GradientBGType.EndlessRiverGradient:
        selectedGradient = _endlessRiverGradient();
        break;
      case GradientBGType.CrazyOrangeGradient:
        selectedGradient = _crazyOrangeGradient();
        break;
      case GradientBGType.ShoreGradient:
        selectedGradient = _shoreGradient();
        break;
    }

    return selectedGradient;
  }

BoxDecoration _greyGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.black12]));
  }

  BoxDecoration _blueGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.blue]));
  }

  BoxDecoration _greenGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.greenAccent, Colors.green]));
  }

  BoxDecoration _redGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.redAccent, Colors.red]));
  }

  BoxDecoration _yellowGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.yellow, Colors.amber]));
  }

  BoxDecoration _skyBlueGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue, Colors.blue]));
  }

  BoxDecoration _lightBlueGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Color.fromARGB(255, 130, 200, 255),
          Color.fromARGB(255, 130, 200, 255)
        ]));
  }

  /* Inspired from uiGradients.com */
  /// Virgin America
  BoxDecoration _virginAmericaGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF7b4397), Color(0xFFdc2430)]));
  }

  /// Twitch 
  BoxDecoration _twitchGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6441A5), Color(0xFF2a0845)]));
  }

  /// Endless River
  BoxDecoration _endlessRiverGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF43cea2), Color(0xFF185a9d)]));
  }

  /// Crazy Orange
  BoxDecoration _crazyOrangeGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFd38312), Color(0xFFa83279)]));
  }

  /// Shore
  BoxDecoration _shoreGradient() {
    return BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF70e1f5), Color(0xFFffd194)]));
  }
}
