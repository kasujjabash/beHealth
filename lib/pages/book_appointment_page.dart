import 'package:behealth/componets/my_button.dart';
import 'package:flutter/material.dart';
import '../componets/calender.dart';
import '../models/health_model/doctor.dart';
import 'booking_confirmed.dart';

class BookAppointment extends StatefulWidget {
  final Doctor doctor;

  const BookAppointment({
    super.key,
    required this.doctor,
  });

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime? _selectedDay;

  void _onDaySelected(DateTime selectedDate) {
    setState(() {
      _selectedDay = selectedDate;
    });
  }

  // Confirm payment method
  void confirmPayment() {
    if (_selectedDay != null) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Are you sure you want to pay for scheduled call?"),
          actions: [
            // Cancel
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            // Yes
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingConfirmed(),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a date'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        leading: Image.asset(widget.doctor.imagePath),
                        title: Text(
                          "Booking for ${widget.doctor.title}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(widget.doctor.description),
                      ),
                      const SizedBox(height: 20),
                      // Calendar
                      Calendar(onDaySelected: _onDaySelected),
                      const SizedBox(height: 20),
                      const Text(
                        "Selected Date:",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      if (_selectedDay != null)
                        Text(
                          "${_selectedDay!.toLocal()}".split(' ')[0],
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      const SizedBox(height: 20),
                      // Confirm payment
                      MyButton(text: "Confirm payments", onTap: confirmPayment),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
