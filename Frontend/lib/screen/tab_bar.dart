import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:fta/screen/history/history.dart';
import 'package:fta/screen/home/home.dart';
import 'package:fta/services/notification.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    Home(),
    FlightHistory(),
    Center(child: Text("Search")),
  ];

  @override
  void initState() {
    NotificationServices.askForNotificationPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          _selectedIndex == 1 ? const Color(0xffE8D9D5) : Color(0xffF0C0E7),
      body: tabItems[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        backgroundColor:_selectedIndex == 1 ? const Color(0xffE8D9D5) : const Color(0xffF0C0E7),

        animationCurve: Curves.elasticIn,
        selectedIndex: _selectedIndex,
        iconSize: 25,
        showElevation: false, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.home, color: Colors.black),
            title: const Text('Home',
                style: TextStyle(
                    fontFamily: 'MadeTommy',
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.flight, color: Colors.black),
            title: const Text('History',
                style: TextStyle(
                    fontFamily: 'MadeTommy',
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search, color: Colors.black),
            title: const Text('Search',
                style: TextStyle(
                    fontFamily: 'MadeTommy',
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
