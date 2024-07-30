import 'package:flutter/material.dart';
import 'package:fta/screen/status/currentFlight/current_flight_status.dart';
import 'package:lottie/lottie.dart';

class FlightStatusDetailBox extends StatelessWidget {
  const FlightStatusDetailBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffE8AAD9),
      borderRadius: BorderRadius.circular(17),
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CurrentFlightStatus(),
            ),
          );
        },
        child: Container(
          height: 150,
          // decoration: BoxDecoration(
          //   color: const Color(0xffE8AAD9),
          //   borderRadius: BorderRadius.circular(17),
          // ),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: const Color(0xffCC95BF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(height: 4),
                  for (int i = 0; i < 4; i++)
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: 10,
                        width: 5,
                        color: const Color(0xffCC95BF),
                      ),
                    ),
                  const SizedBox(height: 4),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      // color: const Color(0xffCC95BF),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: const Color(0xffCC95BF), width: 2.5),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('GKP',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  Text('Gorakhpur',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 20),
                  Text('DEL',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  Text('Delhi',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                ],
              ),
              const Spacer(),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text('B07',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w600)),
                  Text('Gate',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 20),
                  Text('9:15',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w600)),
                  const Text('Departure',
                      style: TextStyle(
                          color: Color(0xffCC95BF),
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }
}
