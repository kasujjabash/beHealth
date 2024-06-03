import 'package:behealth/models/health_model/doctors.dart';
import 'package:behealth/screens/profile.dart';
import 'package:behealth/screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../pages/doctor_tile.dart';
import '../componets/avatar.dart';
import '../componets/banner.dart';
import '../pages/doctor_details_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Be health'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Profile())),
          child: const Icon(
            Icons.person,
            size: 25,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Wallet())),
            child: const Icon(
              Icons.wallet,
              size: 25,
            ),
          ),
          const Padding(padding: EdgeInsets.all(10))
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          children: [
            //banner
            const HomeBanner(
              text: "Welcome to BeHealth!",
              subText:
                  'Expert medical advice and \nconsultations, paid with crypto.',
              image: 'lib/images/banner_image.png',
            ),
            const SizedBox(
              height: 20,
            ),
            // timer and coachs
            //? duration
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        //icon
                        Icon(Icons.alarm),
                        SizedBox(
                          width: 8,
                        ),
                        //time/ duration
                        Text(
                          '45m',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    //Text
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Duration',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                //? coachs avatars
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Avatar(
                          imagePath: 'lib/images/bash-cut.png',
                        ),
                        Avatar(
                          imagePath: 'lib/images/bash-cut.png',
                        ),
                        Avatar(
                          imagePath: 'lib/images/bash-cut.png',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //text
                    Text(
                      'For medication',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //activities
            Expanded(
              child: ListView.builder(
                itemCount: Doctors().doctor.length,
                itemBuilder: (context, index) {
                  final activity = Doctors().doctor[index];
                  return DoctorTile(
                    doctor: activity,
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorsDetailPage(
                                  doctor: activity,
                                ))),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
