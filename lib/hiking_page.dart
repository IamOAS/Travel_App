import 'package:flutter/material.dart';
import 'dimensions.dart';

void main() => runApp(
      HikingPage(),
    );

class HikingPage extends StatefulWidget {
  @override
  _HikingPageState createState() => _HikingPageState();
}

class _HikingPageState extends State<HikingPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SizeConfig dimensions = SizeConfig();

    double screenWidth = dimensions.screenWidthSafeFunc();
    double screenHeight = dimensions.screenHeightSafeFunc();

    double responsiveHeight(double number) {
      return (dimensions.numOverSafeBlockVertical(number));
    }

    double responsiveWidth(double number) {
      return (dimensions.numOverSafeBlockHorizontal(number));
    }

    return Scaffold(
      body: Container(),
    );
  }
}
