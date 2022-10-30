import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class portal extends StatefulWidget {
  
  @override
  State<portal> createState() => _portalState();
}

class _portalState extends State<portal> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: defaultWebpage(url: "https://webportal.ugv.edu.bd/LoginPage.aspx"))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}