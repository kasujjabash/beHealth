import 'package:behealth/models/work_models/activity.dart';

class Activities {
  //List of activities
  final List<Activity> _activity = [
    //Activity 1
    Activity(
        title: 'Resistance - Circut Training',
        imagePath: 'lib/images/bash.png',
        description: 'MEDIUM'),
    //Activity 2
    Activity(
        title: 'Power - Total strong',
        imagePath: 'lib/images/bash.png',
        description: 'HARD'),
    //Activity 3
    Activity(
        title: 'Active recovery',
        imagePath: 'lib/images/bash.png',
        description: 'EASY'),
  ];

/* GETTERS GO HERE*/
  // getter for the list
  List<Activity> get activity => _activity;
}
