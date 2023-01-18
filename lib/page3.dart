import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: ClipRRect(
          child: Stack(
            children: <Widget> [

              Pinned.fromPins(
                Pin(size: 310.0, start: -123.0),
                Pin(size: 310.0, start: -120.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff61e0dd),
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
              ),//positionnement de la couleur en haut à gauche

              Pinned.fromPins(
                Pin(size: 177.0, middle: 0.5),
                Pin(size: 133.0, start: 40),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/images/logo2.png"),
                    fit: BoxFit.fill,
                     // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Pinned.fromPins(
                Pin(start: -74.8, end: -74.8),
                Pin(size: 300, middle: 0.4),
                child: Image.asset("assets/images/page3_2.png",),
              ), // Positionnement de l'image de la voiture

            ],
        ),

      ),
      ),
    );
  }
}
