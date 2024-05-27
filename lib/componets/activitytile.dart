import 'package:flutter/material.dart';
import '../models/work_models/activity.dart';

class ActivityTile extends StatelessWidget {
  final Activity activity;
  final Function()? onTap;
  const ActivityTile({super.key, required this.activity, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(activity.title),
          subtitle: Text(activity.description),
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(activity.imagePath)),
          onTap: onTap,
        ),
      ),
    );
  }
}
