import 'package:flutter/material.dart';
import 'package:travel_app/tools/dimensions.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    SizeConfig dimensions = SizeConfig();

    double responsiveHeight(double number) {
      return (dimensions.numOverSafeBlockVertical(number));
    }

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: responsiveHeight(18.67),
        width: responsiveHeight(18.67),
        child: Image.asset(
          'assets/images/Group.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
