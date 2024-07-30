import 'package:flutter/material.dart';

class Box1 extends StatelessWidget {
  const Box1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffBDE6C0),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Where\'s My Plane?',
            style: TextStyle(
                fontSize: 26,
                fontFamily: 'MadeTommy',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 3),
          const Text(
            'Your flight\'s arrival & departure timings',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'MadeTommy',
                fontWeight: FontWeight.w400),
          ),

          //-------------------------Adding row for flight status-----------------------------------
          const SizedBox(height: 25),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: const Color(0xff97B89A),
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
                        color: const Color(0xff97B89A),
                      ),
                    ),
                  const SizedBox(height: 4),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: const Color(0xff97B89A),
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
                        color: const Color(0xff97B89A),
                      ),
                    ),
                  const SizedBox(height: 4),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: const Color(0xff97B89A), width: 2.5),
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
                  Text('LKN',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  Text('Lucknow',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Left on time',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  Text('9:15',
                      style: TextStyle(
                          color: Color.fromARGB(255, 117, 156, 120),
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                  Text('Arrived early',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  Text('13:56',
                      style: TextStyle(
                          color: Color.fromARGB(255, 117, 156, 120),
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                  Text('B07',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w500)),
                  Text('Gate',
                      style: TextStyle(
                          color: Color.fromARGB(255, 117, 156, 120),
                          fontSize: 14,
                          fontFamily: 'MadeTommy',
                          fontWeight: FontWeight.w400)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
