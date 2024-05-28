import 'package:behealth/componets/my_nav_bar.dart';
import 'package:behealth/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
// import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
    //  WorkOut()
  }
}
