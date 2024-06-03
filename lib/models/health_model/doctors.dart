import 'package:behealth/models/health_model/doctor.dart';

class Doctors {
  //List of Doctors
  final List<Doctor> _doctors = [
    //Doctor 1
    Doctor(
        title: 'Dr. Bashir Kasujja',
        imagePath: 'lib/images/bash.png',
        description: 'Dentist',
        about:
            "We all have become more aware of our health this year. With telemedicine's rapid growth,We all have become more aware of our health this year. With telemedicine's rapid growth,"),
    //Doctor 2
    Doctor(
        title: 'Dr. John Bosica',
        imagePath: 'lib/images/bash.png',
        description: 'Othopedician',
        about:
            "We all have become more aware of our health this year. With telemedicine's rapid growth,,We all have become more aware of our health this year. With telemedicine's rapid growth,"),
    //Doctor 3
    Doctor(
        title: 'Dr. Shafic Nsubuga',
        imagePath: 'lib/images/bash.png',
        description: 'Surgon',
        about:
            "We all have become more aware of our health this year. With telemedicine's rapid growth,"),
    //Doctor 3
    Doctor(
      title: 'Dr. Oscar Rukundo',
      imagePath: 'lib/images/bash.png',
      description: 'Surgon',
      about:
          "We all have become more aware of our health this year. With telemedicine's rapid growth,",
    ),
    //Doctor 4
    Doctor(
      title: 'Dr. Opendo Charlis',
      imagePath: 'lib/images/bash.png',
      description: 'Councilor',
      about:
          "We all have become more aware of our health this year. With telemedicine's rapid growth,",
    ),
  ];

/* GETTERS GO HERE*/
  // getter for the list
  List<Doctor> get doctor => _doctors;
}
