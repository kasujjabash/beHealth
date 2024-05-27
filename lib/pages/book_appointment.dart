import 'package:flutter/material.dart';

import '../models/doctors_model/doctor.dart';

class BookAppointment extends StatelessWidget {
  final Doctor doctors;
  const BookAppointment({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Appointment'),
      ),
      body:const Column(
        children: [

        ],
      ) ,
    );
  }
}
