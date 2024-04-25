import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';
import 'package:home_monitoring_dashboard/widgets/device_card_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 34,
                vertical: 28,
              ),
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: AppColor.white,
                  ),
                  const Spacer(),
                  Text(
                    "Bedroom",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColor.white,
                        fontSize: height * 0.03,
                        letterSpacing: -0.5,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                ],
              ),
            ),

            SizedBox(
              height: height * 0.05,
            ),

            // circular chart
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Center(
                child: CircularPercentIndicator(
                  radius: width * 0.38,
                  lineWidth: 12.0,
                  percent: 0.8,
                  progressColor: AppColor.appYellow,
                  backgroundColor: AppColor.cardColor,
                  center: Text(
                    '18°C',
                    style: TextStyle(
                        color: AppColor.appYellow,
                        fontSize: height * 0.08,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: height * 0.05,
            ),

            // all device cards
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 18,
              ),
              child: Text(
                "All Device",
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: height * 0.02,
                ),
              ),
            ),

            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: width * 0.05,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              children: const [
                DeviceCard(
                  icon: FontAwesomeIcons.fan,
                  title: 'Air Conditioner',
                  isActive: true,
                ),
                DeviceCard(
                  icon: FontAwesomeIcons.lightbulb,
                  title: 'Lamp',
                  isActive: false,
                ),
                DeviceCard(
                  icon: FontAwesomeIcons.volumeHigh,
                  title: 'Speaker',
                  isActive: false,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
