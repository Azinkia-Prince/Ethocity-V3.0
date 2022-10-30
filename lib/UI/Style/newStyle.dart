import 'package:flutter/material.dart';

TextStyle txtStyle(double fnt_sz,{Color clr=Colors.white,FontWeight fnt_wdt = FontWeight.w300,String fnt_family=''}){
  return TextStyle(
    fontSize: fnt_sz,
    color: clr,
    fontWeight: fnt_wdt,
    fontFamily: fnt_family,
  );
}