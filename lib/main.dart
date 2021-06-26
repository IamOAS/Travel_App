import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/first_page.dart';

void main() => runApp(
      MaterialAppFirst(),
    );

class MaterialAppFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelAppMainPage(),
    );
  }
}
