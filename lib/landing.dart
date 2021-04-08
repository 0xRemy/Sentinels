import 'package:flutter/material.dart';
import 'package:project/wolkie_tolkie.dart';

class landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => wokie_tolkie()));
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            image: DecorationImage(
                image: new AssetImage('image/wallpaper.gif'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop)),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(90.0),
                ),
                Container(
                  padding: EdgeInsets.all(50.0),
                ),
                Container(
                  child: Image(
                    image: new AssetImage('image/logo.png'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
