import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_monitoring_dashboard/constants/color.dart';
import 'package:home_monitoring_dashboard/widgets/card_widgets.dart';

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
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // title
                  Text(
                    "Good Morning, John Doe",
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // icon and pic
                  Row(
                    children: [
                      // icon
                      Icon(
                        FontAwesomeIcons.bell,
                        color: AppColor.white,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      // pic
                      ClipOval(
                        child: Image.asset(
                          "assets/img/pic.jpg",
                          height: height * 0.05,
                          width: height * 0.05,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // date and temp status
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 18,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.cardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // date
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // icon
                          Icon(
                            FontAwesomeIcons.calendar,
                            color: AppColor.appYellow,
                            size: 16,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          // text
                          Text(
                            "24 Dec 2024",
                            style: TextStyle(
                              color: AppColor.appYellow,
                              fontSize: height * 0.018,
                            ),
                          ),
                        ],
                      ),

                      // temp
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // icon
                          Icon(
                            FontAwesomeIcons.temperatureEmpty,
                            color: AppColor.appYellow,
                            size: 16,
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          // text
                          Text(
                            "25°C Outdoor",
                            style: TextStyle(
                              color: AppColor.appYellow,
                              fontSize: height * 0.018,
                            ),
                          ),
                        ],
                      ),

                      // status
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // icon
                            Icon(
                              FontAwesomeIcons.cloudShowersHeavy,
                              color: AppColor.appYellow,
                              size: 16,
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            // text
                            Text(
                              "Rain",
                              style: TextStyle(
                                color: AppColor.appYellow,
                                fontSize: height * 0.018,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // choose
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 18,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.appYellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 6,
                      ),
                      child: Text(
                        "Room",
                        style: TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.02,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 6,
                      ),
                      child: Text(
                        "Device",
                        style: TextStyle(
                          color: AppColor.appYellow,
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.02,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // card list
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  HomeCard(
                    title: "Bedroom",
                    device: 3,
                    icon: FontAwesomeIcons.bed,
                    isActive: true,
                  ),
                  HomeCard(
                    title: "Livingroom",
                    device: 7,
                    icon: FontAwesomeIcons.personBooth,
                    isActive: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
