import 'package:flutter/material.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';

class HomeCard extends StatelessWidget {
  final bool isActive;
  final String title;
  final int device;
  final IconData icon;
  const HomeCard({
    super.key,
    required this.title,
    required this.device,
    required this.icon,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? AppColor.appYellow : AppColor.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.15,
                    height: width * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.backgroundColor,
                    ),
                    child: Icon(
                      icon,
                      color: isActive ? AppColor.appYellow : AppColor.white,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: isActive ? AppColor.black : AppColor.white,
                      fontWeight: FontWeight.w500,
                      fontSize: height * 0.025,
                    ),
                  ),
                  Text(
                    device.toString() + " Device",
                    style: TextStyle(
                      color: isActive ? AppColor.black : AppColor.white,
                      fontWeight: FontWeight.w400,
                      fontSize: height * 0.02,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: isActive ? AppColor.black : AppColor.white,
                size: height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
