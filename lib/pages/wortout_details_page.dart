import 'package:flutter/material.dart';

import '../models/work_models/activity.dart';

class WorkOutDetails extends StatelessWidget {
  final Activity activity;
  const WorkOutDetails({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activity.title),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
