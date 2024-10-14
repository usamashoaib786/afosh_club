import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/utils.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/View/Car%20Pass/car_pass.dart';
import 'package:afosh_club/View/HomeScreen/home_widgets.dart';
import 'package:afosh_club/View/HomeScreen/slider.dart';
import 'package:afosh_club/View/Membership%20Card/membership_card.dart';
import 'package:afosh_club/View/Membership%20Details/membership_detail.dart';
import 'package:afosh_club/View/Room%20Booking/room_booking.dart';
import 'package:afosh_club/View/Subscription%20Plan/subscription_plan.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List wrapImg = [
    "assets/images/memberPlan.png",
    "assets/images/boking.png",
    "assets/images/subscription.png",
    "assets/images/invoice.png",
    "assets/images/carPass.png",
    "assets/images/memberCard.png",
  ];
  List wrapText = [
    "Member Plan",
    "Room Booking",
    "Subscription",
    "Restaurant Bills",
    "Car Pass",
    "Membership card"
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeWidgets.homeAppBar(),
          // const HomeSlider(),
          const SizedBox(
            height: 40,
          ),
          Wrap(
            runSpacing: 15,
            children: [
              for (int i = 0; i < 6; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = i;
                      if (i == 0) {
                        push(context, const MemberShipDetailScreen());
                      } else if (i == 1) {
                        push(context, const RoomBookingScreen());
                      } else if (i == 2) {
                        push(context, const SubscriptionPlanScreen());
                      } else if (i == 3) {
                        push(context, const CarPassScreen());
                      } else if (i == 4) {
                        push(context, const CarPassScreen());
                      } else if (i == 5) {
                        push(context, const MemberShipCardScreen());
                      }
                    });
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      height: 110,
                      width: 115,
                      decoration: BoxDecoration(
                        color: index == i
                            ? AppTheme.appColor
                            : AppTheme.whiteColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "${wrapImg[i]}",
                            height: 50,
                          ),
                          AppText.appText(
                            "${wrapText[i]}",
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            textColor: index == i
                                ? AppTheme.white
                                : AppTheme.blackText,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              height: 110,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      height: 110,
                      width: 245,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.amber,
                          image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/homerandom.png",
                              ),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: AppText.appText(
                              "Located in the heart of Lahore",
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              textColor: AppTheme.white),
                        ),
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
