import 'package:flutter/material.dart';
import 'package:fta/screen/home/component/flight_status.dart';
import 'package:fta/screen/home/component/loyalty_points.dart';
import 'package:fta/screen/search/search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      "Loyalty Program",
      "Popular",
      "News",
      "Trending",
      "Recommended"
    ];
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //------------------------------------------------------------------------------------------------
                const SizedBox(height: 5),
                const Text('Hi there,',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w400)),
                const Text('Your next flight takes\noff soon...',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w500)),
                //----------------------------------------Search Bar--------------------------------------------------------
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchScreen()));
                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffEBB1EA),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/search.png",
                          height: 28,
                        ),
                        const SizedBox(width: 15),
                        const Text('Search flights',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'MadeTommy',
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ),

                //---------------------------------------Flight Status---------------------------------------------------------
                const SizedBox(height: 20),
                const FlightStatusDetailBox(),
                //---------------------------------------Horizontal list of items--------------------------------------------------------
                const SizedBox(height: 20),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, i) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color:
                                i == 0 ? Colors.black : const Color(0xffEBB1EA),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Center(
                            child: Text(
                              items[i],
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'MadeTommy',
                                fontWeight: FontWeight.w400,
                                color: i == 0
                                    ? const Color(0xffEBB1EA)
                                    : Colors.black,
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 5),
                ),

                //---------------------------------------Loyalty Points--------------------------------------------------------
                const SizedBox(height: 20),
                LoyaltyPointBox(),
                //---------------------------------------Loyalty Text--------------------------------------------------------
                const SizedBox(height: 20),
                const Text('Very close to redeeming your,',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w400)),
                const Text('Perks and benefits',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w500)),

                //---------------------------------------Flight discount---------------------------------------------------------
                const SizedBox(height: 20),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xffE8AAD9),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: const Center(
                      child: Text(
                    "Get 20% off on your next flight",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'MadeTommy',
                        fontWeight: FontWeight.w500),
                  )),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
