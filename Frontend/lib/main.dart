import 'package:flutter/material.dart';
import 'package:fta/screen/home/home.dart';
import 'package:fta/screen/splashScreen.dart';
import 'package:fta/screen/tab_bar.dart';
import 'package:fta/services/notification.dart';
import 'services/api_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NotificationServices.globalKey,
      debugShowCheckedModeBanner: false,
      title: 'Flight Status Tracker',
      home: TabPage(),
    );
  }
}
