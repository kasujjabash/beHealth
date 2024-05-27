import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imagePath;
  const Avatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          backgroundImage: AssetImage(imagePath)),
    );
  }
}
