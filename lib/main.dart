import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentations/screens/breakdowns_screen.dart';
import 'presentations/screens/home_screen.dart';
import 'presentations/screens/operation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Industry',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        OperationScreen.id: (context) => OperationScreen(),
        BreakdonwScreen.id: (context) => BreakdonwScreen(),
      },
    );
  }
}
