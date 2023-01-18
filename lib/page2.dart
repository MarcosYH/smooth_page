import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: ClipRRect(
          child: Stack(
            children: <Widget> [
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 470.0, start: 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff6c80fe),

                  ),
                ),
              ),// Couleur bleu en fond

              Pinned.fromPins(
                Pin(size: 310.0, end: -123.0),
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
                Pin(size: 310.0, start: -155.0),
                Pin(size: 310.0, middle: 0.43),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffbaf85f),
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
              ),//Positionnement de la couleur vert façon là
              Pinned.fromPins(
                Pin(size: 177.0, middle: 0.5),
                Pin(size: 133.0, start: 30),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage("assets/images/logo2.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

              Pinned.fromPins(
                Pin(start: -250, end: -15),
                Pin(size: 800, middle: 0.5),
                child: Image.asset("assets/images/voiture1.png",),
              ), // Positionnement de l'image de la voiture

            ],

          ),
        ),

      ),

    );
  }
}
