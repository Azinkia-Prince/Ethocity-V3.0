import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:ethocity_v3/pages/Profile.dart';
import 'package:ethocity_v3/pages/homepage.dart';
import 'package:ethocity_v3/pages/notice.dart';
import 'package:ethocity_v3/pages/portal.dart';
import 'package:ethocity_v3/pages/routine.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async
{ WidgetsFlutterBinding.ensureInitialized;
  await Hive.initFlutter();
  var box = await Hive.openBox('Details');
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ethocity V3.0",
      theme: ThemeData(
        scaffoldBackgroundColor: customColor.navclr,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          toolbarHeight: 50,
          elevation: 0,
          color: Color.fromARGB(179, 15, 24, 44),
        )
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          Lottie.asset("assets/files/63487-programming-computer.json"),
          Container(
            alignment: Alignment.bottomCenter,
            height: 300,
            
            child: Text("ETHOCITY V3.0", style: TextStyle(fontSize: 15,fontFamily: "Barabara", color: Color.fromARGB(255, 112, 59, 209)),),
          )
        ],
       ),
      backgroundColor: Color.fromARGB(255, 14, 30, 83),
      centered: true,
      splashIconSize: 350,
      duration: 2500,
      splashTransition: SplashTransition.fadeTransition,
      
      nextScreen: home(),
    );
  }
}