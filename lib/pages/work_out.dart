import 'package:behealth/models/work_models/activities.dart';
import 'package:flutter/material.dart';
import '../componets/activitytile.dart';
import '../componets/avatar.dart';
import '../componets/banner.dart';
import 'wortout_details_page.dart';

class WorkOut extends StatelessWidget {
  const WorkOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work out'),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.notifications_active,
            size: 25,
          ),
          Padding(padding: EdgeInsets.all(10))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          
          children: [
            //banner
            const HomeBanner(
              text: "Today's workout",
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
                    //text coachs
                    Text(
                      'Coachs',
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
                itemCount: Activities().activity.length,
                itemBuilder: (context, index) {
                  final activity = Activities().activity[index];
                  return ActivityTile(
                    activity: activity,
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WorkOutDetails(
                                  activity: activity,
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
