import 'package:behealth/componets/my_button.dart';
import 'package:flutter/material.dart';

import '../models/health_model/doctor.dart';
import 'booking_confirmed.dart';

class BookAppointment extends StatefulWidget {
  final Doctor doctor;
  const BookAppointment({super.key, required this.doctor});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  void confirmPayment() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Are you sure you want to pay for scheduled call?"),
        actions: [
          //cancel
          TextButton(
              onPressed: () {
                //Pop the box
                Navigator.pop(context);
              },
              child: const Text("Cancel")),
          //Yes
          TextButton(
            onPressed: () {
              //pop the alert window
              Navigator.pop(context);
              //Pop the  page, not to come back once payment is confirmed
              Navigator.pop(context);
              //then display the page to show that payments are confirmed
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookingConfirmed(),
                ),
              );
            },
            child: const Text("Yes"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Booking for ${widget.doctor.title}",
      //     style: const TextStyle(fontSize: 20),
      //   ),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            widget.doctor.imagePath,
                          ),
                          title: Text(
                            "Booking for ${widget.doctor.title}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(widget.doctor.description),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              
              //choose date for a call
              const Text(
                "June 2024",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              //Make payments
              
              // Confirm payment
              MyButton(text: "Confirm payments", onTap: confirmPayment)
            ],
          ),
        ),
      ),
    );
  }
}
