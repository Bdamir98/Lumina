

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/constant/constant.dart';
import 'package:social_app/screen/settings_screen/settings_screen.dart';

import 'feeds/feeds.dart';
import 'friends/friends_screen.dart';
import 'messages/messages_screen.dart';
import 'profile/profile_screen.dart';
class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    FeedsScreen(),
    MessagesScreen(),
    FriendsScreen(),
    //ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              _buildBottomNavigationBarItem('assets/icon/icons8_home.svg', 'Feed', 0),
              _buildBottomNavigationBarItem('assets/icon/icons8_chat_room.svg', 'Messages', 1),
              _buildBottomNavigationBarItem('assets/icon/icons8_user_account.svg', 'Friends', 2),
              _buildBottomNavigationBarItem('assets/icon/icons8_checked_user_female.svg', 'Profile', 3),
              
            ],
            
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(String iconPath, String label, int index) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        height: 30,
        color: _currentIndex == index ? primaryColor : Colors.grey,
      ),
      label: label,
    );
  }}
