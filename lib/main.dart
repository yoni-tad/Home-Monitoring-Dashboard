import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: AppColor.cardColor,
        selectedItemColor: AppColor.appYellow,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                'assets/icons/01.svg',
                color: AppColor.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                'assets/icons/03.svg',
                color: AppColor.white,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SvgPicture.asset(
                'assets/icons/02.svg',
                color: AppColor.white,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
