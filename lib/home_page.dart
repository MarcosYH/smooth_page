import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smoth_page/page1.dart';
import 'package:smoth_page/page2.dart';
import 'package:smoth_page/page3.dart';
import 'package:adobe_xd/adobe_xd.dart';

class homePage extends StatelessWidget {
 // const homePage({Key? key}) : super(key: key);
  final _controller =PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Container(
            child: PageView(
              controller: _controller ,
              children: [
                page1(),
                page2(),
                page3(),
              ],
            ),
          ),
          Align(
            alignment: Alignment(-0.077, 0.57),
            child:  SmoothPageIndicator(
              controller: _controller, count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Color(0xff6b7ffd),
                dotColor: Colors.grey.withOpacity(1),
                dotHeight: 10,
                dotWidth: 20,

              ),
            ),
          ),

          Align(
            alignment: Alignment(-0.077, 0.9),
            child: SizedBox(
              width: 232.0,
              height: 45.0,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: ElevatedButton(
                      child: Text(
                        'Commencer',),
                      style: ElevatedButton.styleFrom (
                        backgroundColor: const Color(0xff2195f2),
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                        minimumSize: Size(232.0, 45.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      ),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),// boutton connexion avec couleur gris fonçé



        ],



           ),
          


    );
  }
}
