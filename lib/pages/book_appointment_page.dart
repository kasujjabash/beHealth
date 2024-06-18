import 'package:behealth/componets/my_button.dart';
import 'package:flutter/material.dart';
import '../componets/calender.dart';
import '../models/health_model/doctor.dart';
import 'payment.dart';

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

  // make payment method
  void confirmPayment() {
    //? If the selected date is not null, then proceed
    if (_selectedDay != null) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("You are proceeding to pay."),
          actions: [
            // Cancel
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            // Pay
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentPage()
                      // BookingConfirmed(),
                      ),
                );
              },
              child: const Text("Pay"),
            ),
          ],
        ),
      );
    } else {
      //? if the selected date is null, the show a snack bar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Please select a date for the appointment.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: const Text(
          "Book Appointment",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade100,
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
                      MyButton(text: "Make payments", onTap: confirmPayment),
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
