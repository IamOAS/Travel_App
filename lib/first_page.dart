import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/dimensions.dart';

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
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(),
            ),
            Expanded(
              flex: 6,
              child: Container(color: Colors.pink),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.blue),
            ),
            Expanded(
              flex: 5,
              child: Container(color: Colors.orange),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.lime),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.teal),
            ),
            Expanded(
              flex: 2,
              child: Container(color: Colors.green),
            ),
            Expanded(
              flex: 31,
              child: Container(color: Colors.yellow),
            ),
            Expanded(
              flex: 4,
              child: Container(color: Colors.red),
            ),
            Expanded(
              flex: 4,
              child: Container(color: Colors.black),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.cyan),
            ),
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
    );
  }
}

class ImageNamesAndLocations {
  String imageMapFunc(String label) {
    return ('assets/images/$label.png');
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
