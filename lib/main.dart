import 'package:flutter/material.dart';
import 'package:andromeda/pages/home.dart';
import 'package:andromeda/pages/map_ui.dart';
import 'package:andromeda/pages/notification.dart';
import 'package:andromeda/pages/user_profile.dart';

void main() {
  runApp(MaterialApp(
    routes: { // so are we using routing?
    // '/': (context) => Loading() // when adding loading page
    '/home': (context) => Home(),
    '/map_ui': (context) => MapUI(),
    //'/messages': (context) => Messages(),
    '/notifications': (context) => Notifications(),
    '/my_profile': (context) => Profile()
    },
    home: BotNavBar()
  ));
}




// create bottom navigation bar here
class BotNavBar extends StatefulWidget {
  const BotNavBar({ Key? key }) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {

  int currentIndex = 0; // which icon clicked on navigation bar
  final List<Widget> screenPages = [ // fix to routing later
    Home(),
    MapUI(),
    Notifications(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // when tapped, save to currentIndex
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red[400],
        iconSize: 25,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box
            ),
            label: 'My Profile',
          )
        ],
      ),
    );
  }
}