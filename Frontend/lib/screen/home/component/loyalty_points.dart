import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoyaltyPointBox extends StatelessWidget {
  const LoyaltyPointBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 225,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xffE8AAD9),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Available points',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'MadeTommy',
                    fontWeight: FontWeight.w500)),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('1,208',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w500)),
                Spacer(),
                Text('Sliver Tier',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 10),
            const LinearProgressIndicator(
              minHeight: 10,
              value: 0.7,
              borderRadius: BorderRadius.all(Radius.circular(17)),
              backgroundColor: Color(0xffC790BA),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            const SizedBox(height: 10),
            const Text('Earn 1,792 more points to redeem loyalty rewards!',
                style: TextStyle(
                    color: Color.fromARGB(255, 112, 65, 101),
                    fontSize: 12,
                    fontFamily: 'MadeTommy',
                    fontWeight: FontWeight.w400)),
            const SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xffC790BA), width: 1),
              ),
              child: const Center(
                child: Text('View details',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ));
  }
}
