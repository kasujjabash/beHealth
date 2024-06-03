import 'package:flutter/material.dart';
import '../models/health_model/doctor.dart';

class DoctorTile extends StatelessWidget {
  final Doctor doctor;
  final Function()? onTap;
  const DoctorTile({super.key, required this.doctor, required this.onTap});

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
          title: Text(doctor.title),
          subtitle: Text(doctor.description),
          leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(doctor.imagePath)),
          onTap: onTap,
        ),
      ),
    );
  }
}
