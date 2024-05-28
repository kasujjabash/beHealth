import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GNav(
          onTabChange: (value) => onTabChange!(value),
          activeColor: Colors.blue,
          color: Colors.black,
          iconSize: 30,
          tabs: const [
            GButton(
              icon: Icons.home,
            ),
            GButton(
              icon: Icons.chat,
            ),
            GButton(icon: Icons.notifications),
            GButton(
              icon: Icons.settings,
            ),
          ]),
    );
  }
}
