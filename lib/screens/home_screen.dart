import 'package:flutter/material.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          children: [
            // appbar
            Row(
              children: [
                // title

                // icon and pic
              ],
            ),
            // date and temp status

            // choose

            // card list
          ],
        ),
      ),
    );
  }
}
