import 'package:behealth/componets/avatar.dart';
import 'package:flutter/material.dart';

import '../componets/profile_picture.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My profile"),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              //profile picture
              ProfilePicture(
                imagePath: 'lib/images/bash.png',
              ),

              // edit profile
              // Center(
              //   child: ElevatedButton(
              //       onPressed: () {}, child: const Text('Edit profile')),
              // )
            ],
          )
          //Your name
          //username
          // short description about a user
          //location
          //occupation
          //date of joining
          // you birthday date
          // Number of appointments made
          // loggedin email address and phone number
        ],
      ),
    );
  }
}
