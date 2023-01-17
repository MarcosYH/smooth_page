import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            child: Image.asset("assets/images/ui1.png",scale: 0.1,),
            //color: Colors.blue,
          ),
        ),

      ),

    );
  }
}
