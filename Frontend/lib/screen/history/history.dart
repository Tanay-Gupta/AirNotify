import 'package:flutter/material.dart';

class FlightHistory extends StatelessWidget {
  const FlightHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE8D9D5),
        appBar: AppBar(
          backgroundColor: const Color(0xffE8D9D5),
          title: const Text(
            'Flight History',
            style: TextStyle(
                fontSize: 26,
                fontFamily: 'MadeTommy',
                fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
            child: ListView(
               physics: BouncingScrollPhysics(),
              children: <Widget>[
                box("GKP", "Gorakhpur", "DEL", "Delhi", "09 DEC 22", "XJ-123"),
                box("BOM", "Mumbai", "BLR", "Bangalore", "10 DEC 22", "YQ-456"),
                box("HYD", "Hyderabad", "MAA", "Chennai", "11 DEC 22",
                    "ZK-789"),
                box("CCU", "Kolkata", "GOI", "Goa", "12 DEC 22", "AB-101"),
                box("AMD", "Ahmedabad", "JAI", "Jaipur", "13 DEC 22", "CD-202"),
              ],
            )));
  }

  Widget box(String from, String fromfull, String to, String tofull,
      String datee, String id) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
          height: 240,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xffF4F3F4),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text('$from',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w600)),
                      Text('$fromfull',
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
                      Text('$to',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w600)),
                      Text('$tofull',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(width: 50),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Date',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 5),
                      Text(datee,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ID',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 5),
                      Text('$id',
                          style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'MadeTommy',
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(width: 50),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xffE8D9D5), width: 1),
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
          )),
    );
  }
}
