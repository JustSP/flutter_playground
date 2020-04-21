import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppThemes {
  ThemeData blueTheme(
      Brightness lightOrDark, int primaryColorDegree, int accentColorDegree) {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: lightOrDark,
      primaryColor: Colors.blue[primaryColorDegree],
      accentColor: Colors.blueAccent[accentColorDegree],
    );
  }

  ThemeData amberTheme(
      Brightness lightOrDark, int primaryColorDegree, int accentColorDegree) {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: lightOrDark,
      primaryColor: Colors.amber[primaryColorDegree],
      accentColor: Colors.amberAccent[accentColorDegree],
    );
  }

  ThemeData greenTheme(
      Brightness lightOrDark, int primaryColorDegree, int accentColorDegree) {
    return ThemeData(
      // Define the default brightness and colors.
      brightness: lightOrDark,
      primaryColor: Colors.green[primaryColorDegree],
      accentColor: Colors.greenAccent[accentColorDegree],
    );
  }
}
