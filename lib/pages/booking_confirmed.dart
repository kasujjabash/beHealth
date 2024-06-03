import 'package:flutter/material.dart';

class BookingConfirmed extends StatelessWidget {
  // final Doctor doctor;
  const BookingConfirmed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: const SafeArea(
          child: Column(
        children: [
          Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //tick icon
                CircleAvatar(
                  child: Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.green,
                  ),
                ),
                //SIZED BOX
                SizedBox(
                  height: 10,
                ),
                //booking confirmed
                Text(
                  "Booking confirmed",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                //Sized box
                SizedBox(
                  height: 10,
                ),
                //email/ sms notification
                Text("Confirmation email and sms has been sent to you"),

                //Doctor's name
              ],
            ),
          ),
        ],
      )),
    );
  }
}
