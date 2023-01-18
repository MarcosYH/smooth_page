import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:Stack(
            children: <Widget> [
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(size: 406.0, start: 0.0),
                child: Container(

                  decoration: BoxDecoration(
                    color: const Color(0xff6c80fe),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1f000000),
                        offset: Offset(0, 15),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                ),
              ),// Couleur bleu en fond

              Pinned.fromPins(
                Pin(size: 310.0, start: -115.0),
                Pin(size: 310.0, start: -173.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff61e0dd),
                    borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
              ),//positionnement de la couleur en haut à gauche

              Pinned.fromPins(
                Pin(size: 310.0, end: -144.0),
                Pin(size: 310.0, middle: 0.3586),
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
                Pin(start: -74.8, end: -74.8),
                Pin(size: 450, middle: 0.5),
                child: Image.asset("assets/images/voiture_white.png",),
              ), // Positionnement de l'image de la voiture

            ],

            //color: Colors.blue,
          ),
        ),

      ),

    );
  }
}
