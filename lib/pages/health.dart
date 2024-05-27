import 'package:flutter/material.dart';
import '../componets/doctors_tile.dart';
import '../models/doctors_model/doctors.dart';

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Talk to a doctor"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            //get access to the health related content
            Expanded(
              child: ListView.builder(
                itemCount: Doctors().doctor.length,
                itemBuilder: (context, index) {
                  final doctor = Doctors().doctor[index];
                  return DoctorsTile(
                    doctors: doctor,
                  );
                },
              ),
            ),
            // Book doctors appointment
          ],
        ),
      ),
    );
  }
}
