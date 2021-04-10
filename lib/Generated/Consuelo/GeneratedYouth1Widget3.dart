import 'package:flutter/material.dart';
import 'package:project/Generated/Mapua/transform.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

/* Rectangle youth 1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedYouth1Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransformHelper.rotate(
        a: 1.00,
        b: -0.01,
        c: 0.01,
        d: 1.00,
        child: Container(
          width: 50.41604232788086,
          height: 54.26755905151367,
          decoration: BoxDecoration(
            boxShadow: kIsWeb
                ? []
                : [
                    BoxShadow(
                      color: Color.fromARGB(63, 0, 0, 0),
                      offset: Offset(0.0, 4.0),
                      blurRadius: 4.0,
                    )
                  ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Image.asset(
              "assets/images/e2ab76f2eafdbc422264d0bd0c21ca2df4f66fc8.png",
              color: null,
              fit: BoxFit.cover,
              width: 50.41604232788086,
              height: 54.26755905151367,
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
        ));
  }
}