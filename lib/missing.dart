import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class foundperson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlImage1 = 'image/missingtext.png';
    final urlImage2 = 'image/foundpersons.png';

    return new Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            children: <Widget>[
              Image.asset(
                urlImage1,
                height: 500,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Image.asset(
                urlImage2,
                width: 240,
                height: 750,
              ),
            ]));
  }
}
