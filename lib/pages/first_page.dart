import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/tools/dimensions.dart';
import 'package:travel_app/utilities/buttons.dart';
import 'package:travel_app/utilities/location_cards.dart';
import 'package:travel_app/tools/constants.dart';
import 'package:travel_app/utilities/option_texts.dart';
import 'package:travel_app/utilities/activities.dart';
import 'package:travel_app/utilities/label_text.dart';
import 'hiking_page.dart';
import 'package:travel_app/utilities/image_picker.dart';

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

    return Scaffold(
      backgroundColor: Color(0xFFFBFCFE),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: responsiveHeight(30),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: responsiveWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuButton(),
                      Container(
                        height: responsiveHeight(52),
                        width: responsiveHeight(52),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            responsiveHeight(10),
                          ),
                          child: ImagePicker(
                            imageName: 'person',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(20),
                ),
                LabelText(
                  fontSize: responsiveWidth(32),
                  labelText: 'Discover',
                ),
                SizedBox(height: responsiveHeight(20)),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: responsiveWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All',
                        style: TextStyle(
                          fontSize: responsiveWidth(16),
                          fontWeight: fontWeight700,
                          color: Color(0xFFF35D38),
                        ),
                      ),
                      OptionTexts(
                        optionText: 'Destinations',
                      ),
                      OptionTexts(
                        optionText: 'Cities',
                      ),
                      OptionTexts(
                        optionText: 'Experiences',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: responsiveHeight(20)),
                Container(
                  margin: EdgeInsets.only(left: responsiveWidth(20)),
                  height: responsiveHeight(260),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      LocationCard(
                        firstText: 'Kayaking in the',
                        secondText: 'Torino Sea',
                        locationText: 'Canada',
                        pictureLocationText: 'kayak-big',
                      ),
                      SizedBox(width: responsiveWidth(20)),
                      LocationCard(
                          firstText: 'Hiking the Grand',
                          secondText: 'Canyon',
                          locationText: 'USA',
                          pictureLocationText: 'canyon',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HikingPage(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(30),
                ),
                LabelText(
                  labelText: 'Activities',
                  fontSize: responsiveWidth(24),
                ),
                SizedBox(
                  height: responsiveHeight(24),
                ),
                Container(
                  margin: EdgeInsets.only(left: responsiveWidth(20)),
                  height: responsiveHeight(65),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Activities(
                        imageLocation: 'uil_kayak',
                        title: 'KAYAK',
                      ),
                      SizedBox(
                        width: responsiveWidth(23),
                      ),
                      Activities(
                        imageLocation: 'Vector',
                        title: 'HIKE',
                      ),
                      SizedBox(
                        width: responsiveWidth(34),
                      ),
                      Activities(
                        imageLocation: 'Vector-1',
                        title: 'WATER SKI',
                      ),
                      SizedBox(
                        width: responsiveWidth(29),
                      ),
                      Activities(
                        imageLocation: 'Vector-2',
                        title: 'SPA',
                      ),
                      SizedBox(
                        width: responsiveWidth(25),
                      ),
                      Activities(
                        imageLocation: 'Vector-3',
                        title: 'TENNIS',
                      ),
                      SizedBox(
                        width: responsiveWidth(28.38),
                      ),
                      Activities(
                        imageLocation: 'bike',
                        title: 'CYCLE',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: responsiveHeight(30)),
                LabelText(
                  labelText: 'Learn More',
                  fontSize: responsiveWidth(24),
                ),
                SizedBox(height: responsiveHeight(20)),
                Container(
                  margin: EdgeInsets.only(left: responsiveWidth(20)),
                  height: responsiveHeight(180),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SmallerLocationCard(
                        pictureLocationText: 'boatbeach',
                      ),
                      SizedBox(width: responsiveWidth(20)),
                      SmallerLocationCard(
                        pictureLocationText: 'beach',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: responsiveHeight(10),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(responsiveHeight(30)),
            topRight: Radius.circular(responsiveHeight(30)),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: responsiveHeight(32),
              height: responsiveHeight(32),
              child: ImagePicker(imageName: 'home'),
            ),
            Container(
              width: responsiveHeight(32),
              height: responsiveHeight(32),
              child: ImagePicker(imageName: 'heart'),
            ),
            Container(
              width: responsiveHeight(32),
              height: responsiveHeight(32),
              child: ImagePicker(imageName: 'account'),
            ),
          ],
        ),
      ),
    );
  }
}
