import 'package:behealth/componets/my_button.dart';
import 'package:behealth/pages/book_appointment_page.dart';
import 'package:flutter/material.dart';

import '../componets/working_hours.dart';
import '../models/health_model/doctor.dart';

class DoctorsDetailPage extends StatefulWidget {
  final Doctor doctor;
  const DoctorsDetailPage({super.key, required this.doctor});

  @override
  _DoctorsDetailPageState createState() => _DoctorsDetailPageState();
}

class _DoctorsDetailPageState extends State<DoctorsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image
            Image.asset(widget.doctor.imagePath),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.doctor.title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              widget.doctor.description,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 15),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 15),
                              decoration: BoxDecoration(
                                color: Colors.green.shade300,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(height: 5),
                    const SizedBox(height: 18),
                    const Text(
                      'About',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.doctor.about,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Working Hour",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const WorkingHours(
                      dayOfTheWeek: "Monday",
                      startingTime: "12:30AM",
                      endingTime: "8:00PM",
                    ),
                    const SizedBox(height: 15),
                    const WorkingHours(
                      dayOfTheWeek: "Tuesday",
                      startingTime: "12:30AM",
                      endingTime: "8:00PM",
                    ),
                    const SizedBox(height: 15),
                    const WorkingHours(
                      dayOfTheWeek: "Wednesday",
                      startingTime: "12:30AM",
                      endingTime: "8:00PM",
                    ),
                    const SizedBox(height: 15),
                    const WorkingHours(
                      dayOfTheWeek: "Thursday",
                      startingTime: "12:30AM",
                      endingTime: "8:00PM",
                    ),
                    const SizedBox(height: 15),
                    const WorkingHours(
                      dayOfTheWeek: "Friday",
                      startingTime: "12:30AM",
                      endingTime: "8:00PM",
                    ),
                    MyButton(
                      text: 'Book Appointment',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookAppointment(
                              doctor: widget.doctor,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
