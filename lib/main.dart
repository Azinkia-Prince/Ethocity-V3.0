import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:ethocity_v3/pages/Profile.dart';
import 'package:ethocity_v3/pages/Signup.dart';
import 'package:ethocity_v3/pages/homepage.dart';
import 'package:ethocity_v3/pages/notice.dart';
import 'package:ethocity_v3/pages/portal.dart';
import 'package:ethocity_v3/pages/routine.dart';
import 'package:ethocity_v3/pages/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';

void main()async {
  await Hive.initFlutter();
  var box = await Hive.openBox('stdnt_data');
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
      home: home(),
    );
  }
}

