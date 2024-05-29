import 'package:flutter/material.dart';

import '../models/health_model/doctor.dart';

class WorkOutDetails extends StatelessWidget {
  final Doctor doctor;
  const WorkOutDetails({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor.title),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
