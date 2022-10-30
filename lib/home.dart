import 'package:ethocity_v3/Constants/customclr.dart';
import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:ethocity_v3/pages/Profile.dart';
import 'package:ethocity_v3/pages/homepage.dart';
import 'package:ethocity_v3/pages/notice.dart';
import 'package:ethocity_v3/pages/portal.dart';
import 'package:ethocity_v3/pages/routine.dart';
import 'package:flutter/material.dart';


class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
var _currentIndex=2;

 static final List _pages = [
  portal(),
  routine(),
  homepage(),
  notice(),
  profile(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex=value;
            });
          },
          currentIndex: _currentIndex,
          //Custom Items
          items: [
            
            navItem(Icons.web_outlined, "Portal", customColor.navclr),            
            navItem(Icons.access_time_outlined, "Routine", customColor.navclr),            
            navItem(Icons.home_outlined, "Home", customColor.navclr),            
            navItem(Icons.notifications_none, "Notice", customColor.navclr),            
            navItem(Icons.account_circle_outlined, "Profile", customColor.navclr),            
          ]
        ),
        body: _pages[_currentIndex]
     );
    
  }
}

