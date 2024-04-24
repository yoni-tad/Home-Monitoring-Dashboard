import 'package:flutter/material.dart';
import 'package:home_monitoring_dashboard/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Monitoring Dashboard',
      home: const HomeScreen(),
    );
  }
}

