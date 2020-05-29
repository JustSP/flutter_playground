import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum TileShape { Rectangular, RoundedRectangle }
enum TileBorderHighlight { None, Left, Right, Top, Bottom, All }

class TileHelperWidgets {
  Border getHighlightedBorder(TileBorderHighlight side, Color borderColor) {
    BorderSide borderSide = BorderSide(color: borderColor, width: 5);
    BorderSide noneBorderSide = BorderSide(color: borderColor, width: 0);

    Border highlightedBorder = new Border();
    switch (side) {
      case TileBorderHighlight.Left:
        highlightedBorder = new Border(left: borderSide);
        break;
      case TileBorderHighlight.None:
        highlightedBorder = new Border(
            left: noneBorderSide,
            right: noneBorderSide,
            top: noneBorderSide,
            bottom: noneBorderSide);
        break;
      case TileBorderHighlight.Right:
        highlightedBorder = new Border(right: borderSide);
        break;
      case TileBorderHighlight.Top:
        highlightedBorder = new Border(top: borderSide);
        break;
      case TileBorderHighlight.Bottom:
        highlightedBorder = new Border(bottom: borderSide);
        break;
      case TileBorderHighlight.All:
        highlightedBorder = new Border(
            left: borderSide,
            right: borderSide,
            top: borderSide,
            bottom: borderSide);
        break;
    }

    return highlightedBorder;
  }

  Widget tileBorderHighlightWidget(TileBorderHighlight tileBorderSide,
      Color borderColor, double height, double cornerRadius, Widget child) {
    return ClipPath(
      child: Container(
        height: height,
        decoration: BoxDecoration(
            border: getHighlightedBorder(tileBorderSide, borderColor)),
        child: child,
      ),
      clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadius))),
    );
  }
}

class TileFactory {

  TileFactory ({this.cornerRadius});

  // Basic tile features
  double _tileElevation = 5;

  double get tileElevation => _tileElevation;

  bool tileRoundBorder = true;
  int cornerRadius = 2;
  TileShape tileShape = TileShape.RoundedRectangle;
  bool embossedBorder = false;
  TileBorderHighlight highlightBorder = TileBorderHighlight.None;
  Color highlightBorderColor = Colors.blue;

  // First Column Features
  String firstColumnTitle;
  TextStyle firstColumnTitleStyle;
  String firstColumnSubTitle;
  TextStyle firstColumnSubTitleStyle;
  String firstColumnText;
  TextStyle firstColumnTextStyle;
  Color firstColumnBackgroundColor;

// Second Column Features
  String secondColumnTitle;
  TextStyle secondColumnTitleStyle;
  String secondColumnSubTitle;
  TextStyle secondColumnSubTitleStyle;
  String secondColumnText;
  TextStyle secondColumnTextStyle;
  Color secondColumnBackgroundColor;

// Third Column Features
  String thirdColumnTitle;
  TextStyle thirdColumnTitleStyle;
  String thirdColumnSubTitle;
  TextStyle thirdColumnSubTitleStyle;
  String thirdColumnText;
  TextStyle thirdColumnTextStyle;
  Color thirdColumnBackgroundColor;

  Widget createTile(Widget child) {
    return Card(
      elevation: tileElevation,
      borderOnForeground: embossedBorder,
      child: TileHelperWidgets().tileBorderHighlightWidget(
          highlightBorder, highlightBorderColor, 100, 2, child),
    );
  }
}

class ThinLeftBordered3ColumnTile extends TileFactory {
  @override
  int get cornerRadius => 5;
}
