import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smoth_page/page1.dart';
import 'package:smoth_page/page2.dart';
import 'package:smoth_page/page3.dart';

class homePage extends StatelessWidget {
 // const homePage({Key? key}) : super(key: key);
  final _controller =PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller ,
              children: [
                page1(),
                page2(),
                page3(),

              ],
            ),
          ),
          SmoothPageIndicator(
              controller: _controller,
              count: 3,
           effect: ExpandingDotsEffect(
              activeDotColor: Colors.deepOrange,
             dotColor: Colors.grey.withOpacity(1),
             dotHeight: 10,
             dotWidth: 20,

           ),

          ),
          ElevatedButton(onPressed: (){}, child: Text('Connexion',))
        ],
      ),

    );
  }
}
