import 'package:flutter/material.dart';
import '../tools/constants.dart';
import 'image_picker.dart';
import 'package:travel_app/tools/dimensions.dart';

class LocationCard extends StatelessWidget {
  LocationCard({
    @required this.pictureLocationText,
    @required this.firstText,
    @required this.secondText,
    @required this.locationText,
    this.onPressed,
  });

  final String pictureLocationText;
  final String firstText;
  final String secondText;
  final String locationText;
  final Function onPressed;

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

    TextStyle locationCardTextStyle() {
      return TextStyle(
        fontWeight: fontWeight700,
        fontSize: responsiveWidth(18),
        color: Color(0xFFFBFCFE),
      );
    }

    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Container(
            height: responsiveHeight(250),
            width: responsiveWidth(170),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(responsiveHeight(20)),
              child: ImagePicker(
                imageName: pictureLocationText,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: responsiveWidth(10),
            ),
            child: Column(
              children: [
                SizedBox(height: responsiveHeight(168)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        firstText,
                        style: locationCardTextStyle(),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        secondText,
                        style: locationCardTextStyle(),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xFFFBFCFE),
                        ),
                        Text(
                          locationText,
                          style: TextStyle(
                            fontWeight: fontWeight700,
                            fontSize: responsiveWidth(10),
                            color: Color(0xFFFBFCFE),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallerLocationCard extends StatelessWidget {
  SmallerLocationCard({
    @required this.pictureLocationText,
  });

  final String pictureLocationText;

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

    return Container(
      height: responsiveHeight(180),
      width: responsiveWidth(170),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          responsiveHeight(20),
        ),
        child: ImagePicker(
          imageName: pictureLocationText,
        ),
      ),
    );
  }
}
