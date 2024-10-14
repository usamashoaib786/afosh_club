import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/Utils/widgets/others/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({super.key});

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Subscription Plan",
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
                            horizontal: 20, vertical: 15),
                        height: 180,
                        width: ScreenSize(context).width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 19,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: AppTheme.appColor,
                                  ),
                                  child: Center(
                                    child: AppText.appText("Most Popular",
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppTheme.whiteColor),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText.appText("Silver Plan",
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        textColor: AppTheme.black),
                                    AppText.appText("5000 pkr",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        textColor: AppTheme.appColor),
                                  ],
                                ),
                                AppText.appText("Quarter",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    textColor: AppTheme.black),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText.appText("Activate Date",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        textColor: AppTheme.black),
                                    AppText.appText("Renew Date",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        textColor: AppTheme.black),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppText.appText("16-09-2024",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppTheme.text45),
                                    AppText.appText("16-09-2024",
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        textColor: AppTheme.text45),
                                  ],
                                )
                              ],
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
