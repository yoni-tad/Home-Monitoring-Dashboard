import 'package:flutter/material.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';

class DeviceCard extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final String title;

  const DeviceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: isActive ? AppColor.appYellow : AppColor.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // icon
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Icon(
              icon,
              color: isActive ? AppColor.black : AppColor.appWhite,
              size: height * 0.06,
            ),
          ),

          SizedBox(
            height: height * 0.01,
          ),

          // text
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isActive ? AppColor.black : AppColor.appWhite,
                fontSize: height * 0.02,
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
