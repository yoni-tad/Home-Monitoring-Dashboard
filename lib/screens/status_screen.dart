import 'package:flutter/material.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Text(
          "Status",
          style: TextStyle(
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
