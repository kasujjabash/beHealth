import 'package:behealth/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../componets/my_nav_bar.dart';
import '../screens/chat_screens.dart';
import '../screens/notifications_screen.dart';
import '../screens/settings_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //?Navigate buttom bar
  // selected index
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //list of pages
  final List<Widget> _pages = [
    const HomeScreen(),
    const ChatScreen(),
    const NotificationsScreen(),
    const SettingsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
