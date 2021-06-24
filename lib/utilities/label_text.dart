import 'package:flutter/material.dart';
import '../tools/constants.dart';
import 'package:travel_app/tools/dimensions.dart';

class LabelText extends StatelessWidget {
  LabelText({
    @required this.labelText,
    @required this.fontSize,
  });

  final String labelText;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    SizeConfig dimensions = SizeConfig();

    double responsiveWidth(double number) {
      return (dimensions.numOverSafeBlockHorizontal(number));
    }

    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(
        horizontal: responsiveWidth(20),
      ),
      child: Text(
        labelText,
        style: TextStyle(
          fontWeight: fontWeight700,
          fontSize: fontSize,
          color: Color(0xFF0C0D0E),
        ),
      ),
    );
  }
}
