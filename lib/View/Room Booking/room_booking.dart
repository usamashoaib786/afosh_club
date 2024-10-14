import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_button.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/Utils/widgets/others/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RoomBookingScreen extends StatefulWidget {
  const RoomBookingScreen({super.key});

  @override
  State<RoomBookingScreen> createState() => _RoomBookingScreenState();
}

class _RoomBookingScreenState extends State<RoomBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Room Booking",
          onBackTap: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      color: AppTheme.whiteColor,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        height: 200,
                        width: ScreenSize(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  child: ClipOval(
                                      child:
                                          Image.asset("assets/images/room.png")),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText.appText("Deluxe King Room",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        textColor: AppTheme.black),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    AppText.appText("Room No: 220",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppTheme.textAB),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/calendar.png",
                                      height: 16,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    AppText.appText("Thursday, 13 September",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppTheme.appColor),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/booking.png",
                                      height: 16,
                                      color: AppTheme.appColor,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    AppText.appText("11:00 - 12:00 AM",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppTheme.appColor),
                                  ],
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: AppButton.appButton(
                                "Room Details",
                                height: 36,
                                width: 260,
                                radius: 21.0,
                                textColor: AppTheme.whiteColor,
                                backgroundColor: AppTheme.appColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
