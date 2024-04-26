import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';
import 'package:home_monitoring_dashboard/screens/home_screen.dart';
import 'package:home_monitoring_dashboard/screens/status_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColor.backgroundColor,
      ),
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Monitoring Dashboard',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List pages = [
    const HomeScreen(),
    const StatusScreen(),
    const HomeScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        backgroundColor: AppColor.cardColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                'assets/icons/01.svg',
                color: currentIndex == 0 ? AppColor.appYellow : AppColor.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                'assets/icons/03.svg',
                color: currentIndex == 1 ? AppColor.appYellow : AppColor.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                'assets/icons/02.svg',
                color: currentIndex == 2 ? AppColor.appYellow : AppColor.white,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
