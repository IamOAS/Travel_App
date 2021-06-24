import 'package:flutter/material.dart';
import 'package:travel_app/tools/dimensions.dart';
import 'package:travel_app/tools/constants.dart';
import 'package:travel_app/utilities/image_picker.dart';

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
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: responsiveHeight(662),
              width: screenWidth,
              child: ImagePicker(
                imageName: 'canyon',
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: responsiveHeight(311),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: responsiveWidth(20),
                  ),
                  child: Text(
                    'Hiking the Grand',
                    style: TextStyle(
                        color: Color(0xFFFBFCFE),
                        fontSize: responsiveWidth(32),
                        fontWeight: fontWeight700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: responsiveWidth(20),
                  ),
                  child: Text(
                    'Canyon',
                    style: TextStyle(
                        color: Color(0xFFFBFCFE),
                        fontSize: responsiveWidth(32),
                        fontWeight: fontWeight700),
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(7),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: responsiveWidth(20),
                  ),
                  child: Row(
                    children: [
                      ImagePicker(
                        imageName: 'Vector-5',
                        colour: Color(0xFFFBFCFE),
                      ),
                      SizedBox(
                        width: responsiveWidth(10),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'USA',
                          style: TextStyle(
                            fontWeight: fontWeight700,
                            fontSize: responsiveWidth(15),
                            color: Color(0xFFFBFCFE),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(23),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(20),
                    ),
                    height: screenHeight,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBFCFE),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          responsiveHeight(30),
                        ),
                        topLeft: Radius.circular(
                          responsiveHeight(30),
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: responsiveHeight(30),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Description',
                            style: TextStyle(
                              fontWeight: fontWeight700,
                              fontSize: responsiveWidth(24),
                              color: Color(0xFF0C0D0E),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Great day hikes and backpacking routes on the North and South Rim of this century-old national park include easy hikes overlooking the rim and more rugged trekking options that descend into the canyon.',
                            style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontWeight: fontWeight500,
                              fontSize: responsiveWidth(16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: responsiveHeight(20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DescriptionColumn(
                              label: 'PRICE',
                              firstLabelText: '\$350',
                              secondLabelText: '/person',
                            ),
                            DescriptionColumn(
                              label: 'RATING',
                              firstLabelText: '4.5',
                              secondLabelText: '/5',
                            ),
                            DescriptionColumn(
                              label: 'DURATION',
                              firstLabelText: '3',
                              secondLabelText: ' hours',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: responsiveHeight(34),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: screenWidth,
                            height: responsiveHeight(53),
                            decoration: BoxDecoration(
                              color: Color(0xFFF35D38),
                              borderRadius: BorderRadius.circular(
                                responsiveHeight(10),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'BOOK NOW',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: fontWeight700,
                                fontSize: responsiveWidth(18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: responsiveHeight(406),
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: screenWidth,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: responsiveWidth(39),
                      ),
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color(0xFFF7BABA),
                      ),
                      width: responsiveHeight(64),
                      height: responsiveHeight(64),
                      alignment: Alignment.center,
                      child: ImagePicker(
                        imageName: 'heart',
                        colour: Color(0xFFF35D38),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionColumn extends StatelessWidget {
  DescriptionColumn({
    @required this.label,
    @required this.firstLabelText,
    @required this.secondLabelText,
  });

  final String label;
  final String firstLabelText;
  final String secondLabelText;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    SizeConfig dimensions = SizeConfig();

    double responsiveWidth(double number) {
      return (dimensions.numOverSafeBlockHorizontal(number));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: responsiveWidth(12),
              fontWeight: fontWeight700,
              color: Color(0xFFD1D3D2),
            ),
          ),
        ),
        Container(
          child: RichText(
            text: TextSpan(
              text: firstLabelText,
              style: TextStyle(
                fontSize: responsiveWidth(24),
                fontWeight: fontWeight700,
                color: Color(0xFFF35D38),
              ),
              children: [
                TextSpan(
                  text: secondLabelText,
                  style: TextStyle(
                    fontSize: responsiveWidth(14),
                    fontWeight: fontWeight700,
                    color: Color(0xFFD1D3D2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
