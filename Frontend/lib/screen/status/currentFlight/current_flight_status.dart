import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fta/screen/status/currentFlight/components/box1.dart';
import 'package:fta/screen/status/currentFlight/components/box2.dart';

import '../../../services/notification.dart';

class CurrentFlightStatus extends StatelessWidget {
  const CurrentFlightStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffD3F5D5),
        appBar: AppBar(
          backgroundColor: const Color(0xffD3F5D5),
          title: const Text(
            'Flight Status',
            style: TextStyle(
                fontSize: 26,
                fontFamily: 'MadeTommy',
                fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  // NotificationServices.sendInstantNotification(
                  //   title: "Flight Delayed",
                  //   body:
                  //       "Your flight XJ-123 from Gorakhpur to Delhi is delayed by 2 hours. New departure time is 12:00 PM.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Flight Canceled",
                  //   body:
                  //       "We regret to inform you that your flight XJ-123 from Gorakhpur to Delhi has been canceled. Please contact customer service for rebooking options.",
                  //   payload: "Test payload",
                  // );

                  NotificationServices.sendInstantNotification(
                    title: "Gate Change",
                    body:
                        "Flight XJ-123 from Gorakhpur to Delhi will now depart from gate B15 (was A3).",
                    payload: "Test payload1",
                  );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Boarding Now",
                  //   body:
                  //       "Your flight XJ-123 from Gorakhpur to Delhi is now boarding. Please proceed to gate B15.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Final Boarding Call",
                  //   body:
                  //       "Final call for boarding flight XJ-123 from Gorakhpur to Delhi. Please proceed to gate B15 immediately.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "On-Time Departure",
                  //   body:
                  //       "Good news! Your flight XJ-123 from Gorakhpur to Delhi is on time. Please arrive at the gate by 10:30 AM.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Schedule Change",
                  //   body:
                  //       "Your flight XJ-123 from Gorakhpur to Delhi has a new departure time: 11:30 AM. Please check in accordingly.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Weather Delay",
                  //   body:
                  //       "Due to bad weather conditions, your flight XJ-123 from Gorakhpur to Delhi is delayed. We will update you with the new departure time shortly.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Flight Resumed",
                  //   body:
                  //       "Your flight XJ-123 from Gorakhpur to Delhi has resumed its schedule. Please check the latest departure time.",
                  //   payload: "Test payload",
                  // );

                  // NotificationServices.sendInstantNotification(
                  //   title: "Check-In Reminder",
                  //   body:
                  //       "Reminder: Online check-in is now open for your flight XJ-123 from Gorakhpur to Delhi.",
                  //   payload: "Test payload",
                  // );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('You have subscribed to this flight updates'),
                    ),
                  );
                },
                icon: const Icon(Icons.notifications_none_outlined,
                    color: Colors.black, size: 30)),
          ],
        ),
        body: const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('From',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'MadeTommy',
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 10),
                            Text('GKP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'MadeTommy',
                                    fontWeight: FontWeight.w600)),
                            Text('Gorakhpur',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'MadeTommy',
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('To',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'MadeTommy',
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 10),
                            Text('DEL',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'MadeTommy',
                                    fontWeight: FontWeight.w600)),
                            Text('Delhi',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'MadeTommy',
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        SizedBox(width: 50),
                      ],
                    ),

                    //--------------------------------------------------------------------------------------------------
                    SizedBox(height: 20),

                    Box1(),
                    SizedBox(height: 20),

                    Box2(),

                    SizedBox(height: 50),
                  ],
                )),
          )),
        ));
  }
}
