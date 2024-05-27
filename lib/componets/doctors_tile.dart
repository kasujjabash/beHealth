import 'package:flutter/material.dart';
import '../models/doctors_model/doctor.dart';
import '../pages/book_appointment.dart';
import 'my_button.dart';

class DoctorsTile extends StatelessWidget {
  final Doctor doctors;
  const DoctorsTile({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade100),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                //doctors picture
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'lib/images/bash.png',
                    height: 100,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //doctors name
                      Text(
                        doctors.name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      //specification of the doctor
                      Text(
                        doctors.doctitle,
                        style: TextStyle(
                            fontSize: 15, color: Colors.grey.shade600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(doctors.status)
                    ],
                  ),
                )
              ],
            ),
            //Appointament button
            MyButton(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  BookAppointment(doctors:doctors,))),
              text: 'Book appointment',
            )
          ],
        ),
      ),
    );
  }
}
