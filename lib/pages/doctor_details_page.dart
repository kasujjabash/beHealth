import 'package:behealth/componets/my_button.dart';
import 'package:behealth/pages/book_appointment_page.dart';
import 'package:flutter/material.dart';

import '../models/health_model/doctor.dart';

class DoctorsDetailPage extends StatelessWidget {
  final Doctor doctor;
  const DoctorsDetailPage({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(doctor.title),
      // ),
      body: Column(
        children: [
          //image
          Image.asset(doctor.imagePath),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                // borderRadius: const BorderRadius.only(
                //   topRight: Radius.circular(40),
                //   topLeft: Radius.circular(40),
                // ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //sized boxed
                    const SizedBox(
                      height: 15,
                    ),
                    //Name
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctor.title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              doctor.description,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          // message and call icons
                          children: [
                            // message
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
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            // call
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
                                ))
                          ],
                        )
                      ],
                    ),
                    // sized box
                    const SizedBox(
                      height: 20,
                    ),
                    //? DIVIDER
                    const Divider(
                      height: 5,
                    ),
                    // sized box
                    const SizedBox(
                      height: 18,
                    ),
                    //About
                    const Text(
                      'About',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    //doctors specific about information
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      doctor.about,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Book appointment button
                    MyButton(
                        text: 'Book Apointment',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookAppointment(doctor: doctor),
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
