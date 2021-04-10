import 'package:flutter/material.dart';

class missingfound extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: const Color(0xFFDE6449)),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Color(0xFFF2EFE9),
      ),
      backgroundColor: Color(0xFFF2EFE9),
      body: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/missingfoundbg.png'),
                    fit: BoxFit.cover))),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {}, //Insert Found Page
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.orange[800]),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: ExactAssetImage('image/FoundPerson.png'),
                          fit: BoxFit.cover)),
                  width: 140,
                  height: 140,
                  alignment: Alignment.center,
                ),
              ),
              InkWell(
                onTap: () {}, //Insert Missing Page
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.orange[800]),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: ExactAssetImage('image/Missingperson.png'),
                        fit: BoxFit.cover),
                  ),
                  width: 140,
                  height: 140,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          alignment: Alignment.center,
        )
      ]),
    );
  }
}
