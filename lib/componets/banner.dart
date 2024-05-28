import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  final String text;
  final String subText;
  final String image;

  const HomeBanner({
    super.key,
    required this.text,
    required this.subText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(18),
      ),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2, // Adjust the flex value as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(subText),
              ],
            ),
          ),
          Expanded(
            flex: 1, // Adjust the flex value as needed
            child: Image.asset(
              image,
              // height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
