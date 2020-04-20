import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/AppPages/SplashScreen.dart';
import 'package:flutter_playground/AppThemes/CustomBGs/customBGs.dart';
import 'package:flutter_playground/AppThemes/CustomThemes/customThemes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        initialRoute: '/',
        theme: CustomAppThemes().blueTheme(),
        home: SplashScreen(
          useSafeArea: false,
          layout: PageLayout.SplashScreen_Layout01,
          bgType: GradientBGType.WhiteGradient,
          bottomText: bottomText(),
          centerImage: Image.asset('assets/images/Flag_of_Kenya.png'),
          logoImage: Image.asset('assets/images/covid-19.png'),
        ));
  }

  RichText bottomText (){
    return RichText(
      text: TextSpan(
        text: 'KEN-HEALTHLINE',
        style: GoogleFonts.nunitoSans(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)
        ),
      );
  }
}
