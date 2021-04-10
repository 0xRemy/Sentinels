import 'package:flutter/material.dart';
import 'package:project/map.dart';
import 'package:project/missingfound.dart';

//This part is still temporary
class wokie_tolkie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFFE07259),
          ),
          Positioned(
            left: 220,
            bottom: 590,
            child: Container(
              height: 180,
              width: 180,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(80 / 360),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/salbalogo.png'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Color(0xFFE07259).withOpacity(0.25),
                          BlendMode.dstATop),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFD06C55),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 212),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFF2EFE9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
            ),
          ),
          Positioned(
            top: 160,
            left: 20,
            child: Container(
              child: Text(
                'Salba',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Masque',
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 221,
            top: 160,
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => missingfound()));
                },
                child: Image(
                  image: AssetImage('image/icon_1.png'),
                ),
              ),
              color: Colors.transparent,
            ),
          ),
          Positioned(
            left: 320,
            top: 160,
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => map()));
                },
                child: Image(
                  image: AssetImage('image/icon_2.png'),
                ),
              ),
              color: Colors.transparent,
            ),
          ),
          Positioned(
            left: 25,
            top: 35,
            child: Container(
              height: 100,
              width: 250,
              child: Row(
                children: [
                  Container(
                    width: 73,
                    height: 73,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('image/person1.png'),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: Text(
                          'Juan dela Cruz',
                          style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, left: 0),
                        width: 130,
                        child: Text(
                          'Rescuer',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 320,
            left: 20,
            child: Material(
              child: InkWell(
                  child: Container(
                    width: 350,
                    height: 350,
                    child: Image(
                      image: AssetImage('image/voicebutton.png'),
                    ),
                  ),
                  onTap: () {
                    print('hello');
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
