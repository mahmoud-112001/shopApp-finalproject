import 'package:flutter/material.dart';
import 'welcomingScreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return homescreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
                width: 250,
                child: Image.asset(
              "Images/logo.png",
            )),
            SizedBox(
              height: 25,
            ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              Container(
                alignment: Alignment.center,

                 width: 250.0,
                 child: DefaultTextStyle(
                   style: const TextStyle(fontSize: 30,color: Color(0xFFDC9750),fontWeight:FontWeight.bold,fontFamily:"LobsterTwo" ),


                   child: AnimatedTextKit(
                     repeatForever: true,
                     animatedTexts: [
                     TypewriterAnimatedText("Be"),
                       TypewriterAnimatedText("Like"),
                       TypewriterAnimatedText("A"),
                       TypewriterAnimatedText("Billionaire")
                     ],
                   ),

                 ),
               ),
             ],
           )
          ],
        ),
      )),
    );
  }
}
