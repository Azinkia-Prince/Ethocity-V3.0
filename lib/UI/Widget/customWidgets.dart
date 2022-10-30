import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/UI/Style/newStyle.dart';
import 'package:ethocity_v3/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

//Bottom Nav

BottomNavigationBarItem navItem(IconData icon,String label,Color navclr)
{
  return BottomNavigationBarItem(
    backgroundColor: navclr,
    icon: Icon(icon),
    label: label,
  );
}

//For Carousel Slider

Container sliderContnr (String imageAdd,{Color shdwclr=Colors.transparent,double blrRds=0})

{
  return Container(
    width: 310,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: shdwclr,
          blurRadius: blrRds
        )
      ]
    ),
    child: Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(imageAdd,height: 180,width: 280,fit: BoxFit.cover,)
      ),
    ),
  );
}

//Quick Links - UGV

Column customContnr (double ht, double wt,Color ContnrClr,context,pagename,IconData icn,{double rds=0,Color shdwclr=Colors.transparent,double blrRds=0, String icn_txt="",})

{
  return Column(
    children: [
      Container(
        height: ht,
        width: wt,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rds),
          color: ContnrClr,
          boxShadow: [
            BoxShadow(
              color: shdwclr,
              blurRadius: blrRds
            )
          ]
        ),
        child: Center(
          child: customIcnBtn(icn, context, pagename),
        )
      ),
      SizedBox(
        height: 5,
      ),
      Text(icn_txt,style: txtStyle(14,fnt_wdt: FontWeight.w400),)
    ],
  );
}


IconButton customIcnBtn (IconData icn,context,pagename){
  return IconButton(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => pagename,));
    }, 
    icon: Icon(icn,size: 25,color: Colors.white,),
    
  );
}


// Shortcuts optional if doesnt work program contest container

Container customContnr2 (double ht, double wt,Color ContnrClr,context,pagename,IconData icn,{double rds=0,Color shdwclr=Colors.transparent,double blrRds=0})

{
  return Container(
    height: ht,
    width: wt,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(rds),
      color: ContnrClr,
      boxShadow: [
        BoxShadow(
          color: shdwclr,
          blurRadius: blrRds
        )
      ]
    ),
    child: Center(
      child: customIcnBtn(icn, context, pagename),
    )
  );
}


IconButton customIcnBtn2 (IconData icn,context,pagename){
  return IconButton(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => pagename,));
    }, 
    icon: Icon(icn,size: 25,color: Colors.white,),
    
  );
}




//program contest container

  Container container(double ht, double wt, Color clr, double rds,{String txt = "",String img = "assets/images/announcement.png",double img_ht = 30, imgtxt_styl, double sz_wt=0 }){
  return Container(
    height: ht,
    width: wt,
    decoration: BoxDecoration(
      color: clr,
      borderRadius: BorderRadius.circular(rds)
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10
          ),
          Image.asset(img,height: img_ht,),
          SizedBox(
            width: sz_wt,
          ),
          Text(txt,style: imgtxt_styl,),
        ],
      ),
    ),
  );
}


//shimmer layout

shimmer_layout(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(radius: 25,),
      SizedBox(width: 20),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          container2(40, 250, Colors.blue, 10),
          SizedBox(height: 7),
          container2(30, 150, Colors.red, 10),
          SizedBox(height: 12),
        ],
      )
    ],
  );
}

//nornal container

Container container2(double ht,double wt,Color clr,double rds){
  return Container(
    height: ht,
    width: wt,
    decoration: BoxDecoration(
      color: clr,
      borderRadius: BorderRadius.circular(rds)
    ),
  );
}

//shimmer effect

Container shimmer_effect()
{
  return Container(
    height: 600,
    width: 340,
    child: Shimmer.fromColors(
      baseColor: customColor.newc, 
      highlightColor: Color.fromARGB(109, 121, 122, 124),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return shimmer_layout();
        },
        itemCount: 6,
        ), 
      ),
  );
}



class defaultWebpage extends StatefulWidget {
   defaultWebpage({Key? key,required this.url}) : super(key: key);
  String url;
  @override
  State<defaultWebpage> createState() => _defaultWebpageState();
}

class _defaultWebpageState extends State<defaultWebpage> {
  int position = 1;
  @override
  WebViewController? controller;
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller!.canGoBack()) {
          controller?.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: IndexedStack(
        index: position,
        children: [
          WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (value) {
                setState(() {
                  position = 1;
                });
              },
              onPageFinished: (value) {
                setState(() {
                  position = 0;

                controller?.evaluateJavascript(
                    "document.getElementsByClassName('header')[0].style.display='none'");

                controller?.evaluateJavascript(
                      "document.getElementsByClassName('navbar-wrapper')[0].style.display='none'");

                controller?.evaluateJavascript(
                    "document.getElementsByClassName('bg-theme-colored')[0].style.background='radial-gradient(black, transparent)'");

                controller?.evaluateJavascript(
                    "document.getElementsByClassName('parallax')[2].style.display='none';");

                controller?.evaluateJavascript(
                    "document.getElementsByClassName('inner-header')[0].style.display='none'");
                });
              },
              onWebViewCreated: (controller) {
                this.controller = controller;
              }),
          Container(
            child: Center(
              child: shimmer_effect(),
            ),
          )
        ],
      ),
    );
  }
}


// Custom Field

SizedBox field (name,aaa,controller){
  return SizedBox(
                width: 250,
                child: TextFormField(
                  controller: controller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: aaa,
                  decoration: InputDecoration(
                  errorStyle: TextStyle(
                    fontSize: 10
                  ),
                  labelText: name,
                  labelStyle: txtStyle(15,fnt_wdt: FontWeight.w400,clr: customColor.ftxClr),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: customColor.ftxClr)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: customColor.ftxClr))

                 ),
                ),
              );
}

//sizedbox

SizedBox space ({double ht =0,double wt=0}){
  return SizedBox(
    height: ht,
    width: wt,
  );
}