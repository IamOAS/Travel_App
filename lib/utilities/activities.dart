import 'package:flutter/material.dart';
import '../tools/constants.dart';
import 'image_picker.dart';
import 'package:travel_app/tools/dimensions.dart';

class Activities extends StatelessWidget {
  Activities({
    @required this.imageLocation,
    @required this.title,
  });

  final String imageLocation;
  final String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    SizeConfig dimensions = SizeConfig();

    double responsiveHeight(double number) {
      return (dimensions.numOverSafeBlockVertical(number));
    }

    double responsiveWidth(double number) {
      return (dimensions.numOverSafeBlockHorizontal(number));
    }

    return Column(
      children: [
        Container(
          height: responsiveHeight(36),
          width: responsiveHeight(36),
          child: ImagePicker(
            imageName: imageLocation,
          ),
        ),
        SizedBox(height: responsiveHeight(9)),
        Text(
          title,
          style: TextStyle(
            fontSize: responsiveWidth(10),
            fontWeight: fontWeight700,
            color: Color(0xFFD1D3D2),
          ),
        ),
      ],
    );
  }
}
