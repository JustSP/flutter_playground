import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppThemes {
  ThemeData blueTheme() {
    return ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.blue[800],
        accentColor: Colors.cyan[600],
      );
  }
}
