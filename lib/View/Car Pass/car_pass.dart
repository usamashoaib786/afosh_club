import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/Utils/widgets/others/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CarPassScreen extends StatefulWidget {
  final data;
  const CarPassScreen({super.key, this.data});

  @override
  State<CarPassScreen> createState() => _CarPassScreenState();
}

class _CarPassScreenState extends State<CarPassScreen> {
  @override
  Widget build(BuildContext context) {
    print("kbdfkf${widget.data}");
    return Scaffold(
      appBar: CustomAppBar(
          title: "Car Pass",
          onBackTap: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // ListView.builder(
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount: 1,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       margin:
            //           const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            //       padding: const EdgeInsets.symmetric(horizontal: 20),
            //       height: 160,
            //       width: ScreenSize(context).width,
            //       decoration: BoxDecoration(
            //         color: AppTheme.appColor,
            //         borderRadius: BorderRadius.circular(30),
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   AppText.appText("Car Pass",
            //                       fontSize: 28,
            //                       fontWeight: FontWeight.w700,
            //                       textColor: AppTheme.whiteColor),
            //                   const SizedBox(
            //                     height: 5,
            //                   ),
            //                   Container(
            //                     height: 1,
            //                     width: 131,
            //                     color: AppTheme.whiteColor,
            //                   ),
            //                 ],
            //               ),
            //               const Image(
            //                 image: AssetImage(
            //                   "assets/images/Car.png",
            //                 ),
            //                 height: 26,
            //               )
            //             ],
            //           ),
            //           Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   AppText.appText("Registration No:",
            //                       fontSize: 20,
            //                       fontWeight: FontWeight.w700,
            //                       textColor: AppTheme.whiteColor),
            //                   AppText.appText("Driver  Name",
            //                       fontSize: 20,
            //                       fontWeight: FontWeight.w600,
            //                       textColor: AppTheme.whiteColor),
            //                 ],
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   AppText.appText("${widget.data}",
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.w400,
            //                       textColor: AppTheme.whiteColor),
            //                   AppText.appText("Talha Ahmad",
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.w400,
            //                       textColor: AppTheme.whiteColor),
            //                 ],
            //               )
            //             ],
            //           )
            //         ],
            //       ),
            //     );
            //   },
            // ),


             Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 160,
                  width: ScreenSize(context).width,
                  decoration: BoxDecoration(
                    color: AppTheme.appColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText.appText("Car Pass",
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppTheme.whiteColor),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 1,
                                width: 131,
                                color: AppTheme.whiteColor,
                              ),
                            ],
                          ),
                          const Image(
                            image: AssetImage(
                              "assets/images/Car.png",
                            ),
                            height: 26,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.appText("Registration No:",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppTheme.whiteColor),
                              AppText.appText("Driver  Name",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppTheme.whiteColor),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.appText("${widget.data["car_no"]}",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppTheme.whiteColor),
                              AppText.appText("${widget.data["driver_name"]}",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppTheme.whiteColor),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
