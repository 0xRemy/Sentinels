import 'package:flutter/material.dart';
import 'package:project/Generated/Mapua/transform.dart';
import 'package:project/generated/Mapua/GeneratedBACKWidget3.dart';

/* Instance BACK
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBACKWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedDaMapWidget'),
      child: Container(
        width: 85.0,
        height: 21.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  final double width =
                      constraints.maxWidth * 1.0588235294117647;

                  final double height =
                      constraints.maxHeight * 1.2380952380952381;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: 0,
                        y: 0,
                        z: 0,
                        child: Container(
                          width: width,
                          height: height,
                          child: GeneratedBACKWidget3(),
                        ))
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
