import 'package:flutter/material.dart';
import 'package:project/map.dart';

//This part is still temporary
class wokie_tolkie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 40.0,
            color: Colors.orange,
          ),
          //Map Button
          Container(
            height: 40.0,
            width: 40.0,
            color: Colors.orange,
            child: InkWell(onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => map()));
            }),
          ),
          Container(
            height: 40.0,
            width: 40.0,
            padding: EdgeInsets.all(20),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
