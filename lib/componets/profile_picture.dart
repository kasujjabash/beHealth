import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imagePath;
  const ProfilePicture({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     // bottomLeft: Radius.circular(60),
          //     // bottomRight: Radius.circular(60),
          //     )
          ),
      height: MediaQuery.of(context).size.height * .35,
      child: Column(
        children: [
          //profile picture
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ],
      ),
    );
  }
}
