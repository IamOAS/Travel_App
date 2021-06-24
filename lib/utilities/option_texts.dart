import 'package:flutter/material.dart';
import '../tools/constants.dart';
import 'package:travel_app/tools/dimensions.dart';

class OptionTexts extends StatelessWidget {
  OptionTexts({
    @required this.optionText,
  });

  final String optionText;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    SizeConfig dimensions = SizeConfig();

    double responsiveWidth(double number) {
      return (dimensions.numOverSafeBlockHorizontal(number));
    }

    return Text(
      optionText,
      style: TextStyle(
        fontSize: responsiveWidth(16),
        fontWeight: fontWeight700,
        color: optionTextColor,
      ),
    );
  }
}
