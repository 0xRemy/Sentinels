import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class missingperson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final urlImage1 = 'image/missingtext.png';
    final urlImage2 = 'image/foundpersons.png';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDE6449),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
        title: Text(
          'Salba',
          style: TextStyle(fontFamily: 'Masque'),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(color: Colors.white),
        child: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(16),
            children: <Widget>[
              Container(
                child: Image.asset(
                  urlImage1,
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                child: Image.asset(
                  urlImage2,
                  width: 240,
                  height: 600,
                ),
              ),
            ]),
      ),
    );
  }
}
