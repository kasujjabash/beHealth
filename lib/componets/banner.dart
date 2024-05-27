import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  final String text;

  const HomeBanner({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(18)),
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
