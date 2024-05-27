import 'package:flutter/material.dart';

import '../componets/banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //     // title: const Text('BeHealth'),
      //     // centerTitle: true,
      //     ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            // date
            Text(
              '',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            //Subscribe to get access more features
            Text(
              'Get a personal\nCoach and a doctor',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            // HomeBanner(
            //   text: 'Make pay through crypto',
            // )
          ],
        ),
      ),
    );
  }
}
