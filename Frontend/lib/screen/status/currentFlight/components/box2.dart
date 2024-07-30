import 'package:flutter/material.dart';

class Box2 extends StatelessWidget {
  const Box2({super.key});

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
            'Arrival Forecast',
            style: TextStyle(
                fontSize: 26,
                fontFamily: 'MadeTommy',
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 3),
          const Text(
            'Your flight is expecteded to reach on time',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'MadeTommy',
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 10),
          vote("Early", 34),
          vote("On Time", 98),
          vote("Delayed", 10),
          vote("Cancelled", 0),
        ],
      ),
    );
  }

  Widget vote(String name, int per) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              '$name',
              style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'MadeTommy',
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              '$per%',
              style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'MadeTommy',
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 7),
        LinearProgressIndicator(
          minHeight: 12,
          value: per / 100,
          borderRadius: const BorderRadius.all(Radius.circular(17)),
          backgroundColor: const Color(0xff97B89A),
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
        ),
      ],
    );
  }
}
