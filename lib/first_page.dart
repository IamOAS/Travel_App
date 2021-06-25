import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/dimensions.dart';
import 'constants.dart';

class TravelAppMainPage extends StatefulWidget {
  @override
  _TravelAppMainPageState createState() => _TravelAppMainPageState();
}

class _TravelAppMainPageState extends State<TravelAppMainPage> {
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

    print(responsiveHeight(30));
    return Scaffold(
      backgroundColor: Color(0xFFFBFCFE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: responsiveWidth(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExSizedBox(flex: 4),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: responsiveHeight(18.67),
                        width: responsiveWidth(21.33),
                        child: ImagePicker(
                          imageName: 'Group',
                        ),
                      ),
                      Container(
                        height: responsiveHeight(52),
                        width: responsiveHeight(52),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            responsiveWidth(10),
                          ),
                          child: ImagePicker(
                            imageName: 'person',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  'Discover',
                  style: TextStyle(
                    fontWeight: fontWeight700,
                    fontSize: responsiveWidth(32),
                    color: Color(0xFF0C0D0E),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: responsiveWidth(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionText(
                        responsiveWidth: responsiveWidth,
                        optionText: "All",
                        colour: Color(0xFFF35D38),
                      ),
                      OptionText(
                        responsiveWidth: responsiveWidth,
                        optionText: "Destination",
                        colour: Color(0xFFCFCFD1),
                      ),
                      OptionText(
                        responsiveWidth: responsiveWidth,
                        optionText: "Cities",
                        colour: Color(0xFFCFCFD1),
                      ),
                      OptionText(
                        responsiveWidth: responsiveWidth,
                        optionText: 'Experiences',
                        colour: Color(0xFFCFCFD1),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 31,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PictureWithText(
                      imageName: "kayak-big",
                      responsiveWidth: responsiveWidth,
                      responsiveHeight: responsiveHeight,
                      locationText: 'Canada',
                      verbText1: 'Kayaking in the',
                      verbText2: 'Tofino Sea',
                    ),
                    SizedBox(
                      width: responsiveWidth(20),
                    ),
                    PictureWithText(
                      imageName: "canyon",
                      responsiveWidth: responsiveWidth,
                      responsiveHeight: responsiveHeight,
                      locationText: 'USA',
                      verbText1: 'Hiking the Grand',
                      verbText2: 'Canyon',
                    ),
                  ],
                ),
              ),
              ExSizedBox(
                flex: 4,
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Activities',
                  style: TextStyle(
                    fontSize: responsiveWidth(24),
                    fontWeight: fontWeight700,
                    color: Color(0xFF0C0D0E),
                  ),
                ),
              ),
              ExSizedBox(flex: 3,),
              Expanded(
                flex: 7,
                child: Container(color: Colors.amber),
              ),
              Expanded(
                flex: 4,
                child: Container(color: Colors.brown),
              ),
              Expanded(
                flex: 4,
                child: Container(color: Colors.black),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.blue),
              ),
              Expanded(
                flex: 12,
                child: Container(color: Colors.orange),
              ),
              Expanded(
                flex: 6,
                child: Container(color: Colors.pink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PictureWithText extends StatelessWidget {
  const PictureWithText({
    @required this.responsiveWidth,
    @required this.responsiveHeight,
    @required this.imageName,
    @required this.verbText1,
    @required this.verbText2,
    @required this.locationText,
  });
  final double Function(double) responsiveWidth;
  final double Function(double) responsiveHeight;
  final String imageName;
  final String verbText1;
  final String verbText2;
  final String locationText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PictureCard(
          responsiveWidth: responsiveWidth,
          responsiveHeight: responsiveHeight,
          imageName: imageName,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExSizedBox(
              flex: 67,
            ),
            Expanded(
              flex: 18,
              child: Padding(
                padding: EdgeInsets.only(
                  left: responsiveWidth(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextOnImage(
                      text: verbText1,
                      responsiveWidth: responsiveWidth,
                    ),
                    TextOnImage(
                      text: verbText2,
                      responsiveWidth: responsiveWidth,
                    ),
                  ],
                ),
              ),
            ),
            ExSizedBox(
              flex: 3,
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.only(
                  left: responsiveWidth(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: responsiveWidth(10.5),
                      height: responsiveHeight(15),
                      child: ImagePicker(
                        imageName: 'Vector-5',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: responsiveWidth(8.75),
                      ),
                      child: Text(
                        locationText,
                        style: TextStyle(
                          fontWeight: fontWeight700,
                          fontSize: responsiveWidth(10),
                          color: Color(0xFFFBFCFE),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ExSizedBox(
              flex: 7,
            ),
          ],
        ),
      ],
    );
  }
}

class TextOnImage extends StatelessWidget {
  const TextOnImage({
    @required this.text,
    @required this.responsiveWidth,
  });
  final double Function(double) responsiveWidth;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight700,
        fontSize: responsiveWidth(18),
        color: Color(0xFFFBFCFE),
      ),
    );
  }
}

class ExSizedBox extends StatelessWidget {
  ExSizedBox({
    @required this.flex,
  });
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: SizedBox(),
    );
  }
}

class PictureCard extends StatelessWidget {
  const PictureCard({
    @required this.responsiveWidth,
    @required this.responsiveHeight,
    @required this.imageName,
  });

  final double Function(double) responsiveWidth;
  final double Function(double) responsiveHeight;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveHeight(250),
      width: responsiveWidth(170),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          responsiveWidth(20),
        ),
        child: ImagePicker(imageName: imageName),
      ),
    );
  }
}

class OptionText extends StatelessWidget {
  OptionText({
    @required this.responsiveWidth,
    @required this.optionText,
    this.colour,
  });

  final double Function(double) responsiveWidth;
  final String optionText;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Text(
      optionText,
      style: TextStyle(
        fontSize: responsiveWidth(16),
        fontWeight: fontWeight600,
        color: colour,
      ),
    );
  }
}

class ImageNamesAndLocations {
  String imageMapFunc(String label) {
    return ('images/$label.png');
  }
}

class ImagePicker extends StatelessWidget {
  ImagePicker({
    @required this.imageName,
    this.colour,
  });

  final String imageName;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    ImageNamesAndLocations imageData = ImageNamesAndLocations();

    String selectImage(String value) {
      return (imageData.imageMapFunc(value));
    }

    return Image.asset(selectImage(imageName), fit: BoxFit.fill, color: colour);
  }
}
