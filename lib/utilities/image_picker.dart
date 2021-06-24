import 'package:flutter/material.dart';

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
