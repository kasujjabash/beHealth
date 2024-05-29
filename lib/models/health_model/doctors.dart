import 'package:behealth/models/health_model/doctor.dart';

class Doctors {
  //List of Doctors
  final List<Doctor> _doctors = [
    //Doctor 1
    Doctor(
        title: 'Dr. Bashir Kasujja',
        imagePath: 'lib/images/bash.png',
        description: 'Dentist'),
    //Doctor 2
    Doctor(
        title: 'Dr. John Bosica',
        imagePath: 'lib/images/bash.png',
        description: 'Othopedician'),
    //Doctor 3
    Doctor(
        title: 'Dr. Shafic Nsubuga',
        imagePath: 'lib/images/bash.png',
        description: 'Surgon'),
    //Doctor 3
    Doctor(
        title: 'Dr. Oscar Rukundo',
        imagePath: 'lib/images/bash.png',
        description: 'Surgon'),
    //Doctor 4
    Doctor(
        title: 'Dr. Opendo Charlis',
        imagePath: 'lib/images/bash.png',
        description: 'Councilor'),
  ];

/* GETTERS GO HERE*/
  // getter for the list
  List<Doctor> get doctor => _doctors;
}
