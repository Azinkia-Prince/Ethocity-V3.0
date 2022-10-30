
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/Quick%20links%20page/blog.dart';
import 'package:ethocity_v3/Quick%20links%20page/images.dart';
import 'package:ethocity_v3/Quick%20links%20page/iqac.dart';
import 'package:ethocity_v3/Quick%20links%20page/pdf.dart';
import 'package:ethocity_v3/Quick%20links%20page/ugv.dart';
import 'package:ethocity_v3/UI/Style/newStyle.dart';
import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:ethocity_v3/pages/Shortcut%20page/coin.dart';
import 'package:ethocity_v3/pages/Shortcut%20page/hero.dart';
import 'package:ethocity_v3/pages/Shortcut%20page/stack.dart';
import 'package:ethocity_v3/pages/Shortcut%20page/udemy.dart';
import 'package:ethocity_v3/pages/Shortcut%20page/w3.dart';
import 'package:ethocity_v3/pages/contest%20page/chief.dart';
import 'package:ethocity_v3/pages/contest%20page/hacker.dart';
import 'package:ethocity_v3/pages/contest%20page/kaggle.dart';
import 'package:ethocity_v3/pages/contest%20page/leet.dart';
import 'package:ethocity_v3/pages/portal.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ETHOCITY"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          CarouselSlider(
            //Custom Slider
            items: [
              sliderContnr("assets/images/1.png"),
              sliderContnr("assets/images/2.png"),
              sliderContnr("assets/images/3.png"),
              sliderContnr("assets/images/4.png"),
            ], 
            options: CarouselOptions(
              height: 160,
              enlargeCenterPage: true,
              autoPlay: true,

            )
          ),
          SizedBox(
            height: 15,
          ),

          //Quick Links 

          Container(
            width: 300,
            child: Text("Quick Links - UGV",style: txtStyle(14,fnt_wdt: FontWeight.w500),)
            ),
          SizedBox(
            height: 15,
          ),
          
          Container(
            width: 310,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              customContnr(50, 50, customColor.newc, context, pdf(),Icons.bookmark_outline,rds: 100,icn_txt: "PDF"),
              
              customContnr(50, 50, customColor.newc, context, iqac(),Icons.check_circle_outline,rds: 100,icn_txt: "IQAC"),
              
              customContnr(50, 50, customColor.newc, context, ugv(),Icons.school_outlined,rds: 100,icn_txt: "UGV"),
              
              customContnr(50, 50, customColor.newc, context, blog(),Icons.newspaper_outlined,rds: 100,icn_txt: "BLOG"),
              
              customContnr(50, 50, customColor.newc, context, images(),Icons.image_outlined,rds: 100,icn_txt: "IMAGES"),
            ],
            ),
          ),
          SizedBox(
          height: 20,
          ),
          Container(
            width: 300,
            child: Text("Shortcuts",style: txtStyle(14,fnt_wdt: FontWeight.w500),)
            ),
          SizedBox(
            height: 15,
          ),

          //Shortcuts
          
          Container(
            width: 310,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // customContnr(50, 50, customColor.newc, context, attendence(),Icons.book_outlined,rds: 10,),
              
              // customContnr(50, 50, customColor.newc, context, attendence(),Icons.book_outlined,rds: 10,),
              
              // customContnr(50, 50, customColor.newc, context, attendence(),Icons.book_outlined,rds: 10,),
              
              // customContnr(50, 50, customColor.newc, context, attendence(),Icons.book_outlined,rds: 10,),
              
              // customContnr(50, 50, customColor.newc, context, attendence(),Icons.book_outlined,rds: 10,),

              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: container(50, 50, customColor.newc, 10,img: "assets/images/coin.png"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => coin(),))
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: container(50, 50, customColor.newc, 10,img: "assets/images/stack.png"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => stack(),))
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: container(50, 50, customColor.newc, 10,img: "assets/images/udemy.png"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => udemy(),))
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: container(50, 50, customColor.newc, 10,img: "assets/images/hero.png"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => hero(),))
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: container(50, 50, customColor.newc, 10,img: "assets/images/w3.png"),
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => w3(),))
              ),
            ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          
          //contest 

          Container(
            width: 300,
            child: Text("Programming Contests",style: txtStyle(14,fnt_wdt: FontWeight.w500),)
            ),
          SizedBox(
            height: 15,
          ),

          Container(
            alignment: Alignment.centerLeft,
            width: 310,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                   InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => leet(),)),
                    child: container(50, 146.5, customColor.newc, 10,img: "assets/images/leet.png",txt: "Leet Code",sz_wt: 5,imgtxt_styl: txtStyle(15,fnt_wdt: FontWeight.w400),img_ht: 27)),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => hacker(),)),
                      child: container(50, 146.5, customColor.newc, 10,img: "assets/images/hackerrank.png",txt: "Hacker Rank",sz_wt: 5,imgtxt_styl: txtStyle(15,fnt_wdt: FontWeight.w400),img_ht: 27)),
                  ],
                ),
                
                Column(
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => chief(),)),
                      child: container(50, 146.5, customColor.newc, 10,img: "assets/images/chief.png",txt: "Code Chief",sz_wt: 5,imgtxt_styl: txtStyle(15,fnt_wdt: FontWeight.w400),img_ht: 30,)),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => kaggle(),)),
                      child: container(50, 146.5, customColor.newc, 10,img: "assets/images/Kaggle.png",txt: "Kaggle",sz_wt: 5,imgtxt_styl: txtStyle(15,fnt_wdt: FontWeight.w400),img_ht: 30,)),
                  ],
                ),
              ],
            ),
          )
          

          
        ],
      )
    );
  }
}
