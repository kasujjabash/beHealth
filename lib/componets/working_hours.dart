import 'package:flutter/material.dart';

class WorkingHours extends StatelessWidget {
  final String dayOfTheWeek;
  final String startingTime;
  final String endingTime;
  const WorkingHours(
      {super.key,
      required this.dayOfTheWeek,
      required this.startingTime,
      required this.endingTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //day of the week
        Text(
          dayOfTheWeek,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Row(
          children: [
            // Start time
            Text(
              startingTime,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("-"),
            const SizedBox(
              width: 5,
            ),
            // End time
            Text(
              endingTime,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        )
      ],
    );
  }
}
