import 'doctor.dart';

class Doctors {
  final List<Doctor> doctor = [
    Doctor(
      name: 'Dr. Mark Opio',
      doctitle: 'Dentist',
      image: 'lib/images/bash.png',
      status: 'Available',
    ),
    Doctor(
        name: 'Dr. Shafique Nsubuga',
        doctitle: 'Surgon',
        image: 'lib/images/bash.png',
        status: 'Available'),
    Doctor(
        name: 'Dr. Oscar Rukundo',
        doctitle: 'Surgon',
        image: 'lib/images/bash.png',
        status: 'Available'),
    Doctor(
        name: 'Dr. Mark Opio',
        doctitle: 'Dentist',
        image: 'lib/images/bash.png',
        status: 'Not available'),
    Doctor(
        name: 'Dr. Mark Opio',
        doctitle: 'Dentist',
        image: 'lib/images/bash.png',
        status: 'Not available'),
  ];
  /* GETTERS GO HERE*/
  // getter for the list
  List<Doctor> get _doctor => doctor;
}
