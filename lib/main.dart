import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:projectodc/get-start/get-start.dart';
import 'package:projectodc/widget/NewstItemswidet.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 4000,
            splashIconSize: double.infinity,
            splash:
            Image.asset('lib/assets/Untitled design (4).jpg',
              cacheHeight: 1500,
              cacheWidth: 2000,
              width: 350,
              height: 200,),
            nextScreen: GetStart(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
            backgroundColor: Colors.black
        ));
  }
}
