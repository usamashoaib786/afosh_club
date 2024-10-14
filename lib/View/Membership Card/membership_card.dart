import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/Utils/widgets/others/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MemberShipCardScreen extends StatefulWidget {
  const MemberShipCardScreen({super.key});

  @override
  State<MemberShipCardScreen> createState() => _MemberShipCardScreenState();
}

class _MemberShipCardScreenState extends State<MemberShipCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Membership Card",
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
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
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
                              AppText.appText("VIP Card",
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
                          CircleAvatar(
                            radius: 25,
                            child: ClipOval(child: Image.asset("assets/images/imge me.jpg")),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.appText("Usama Shoaib",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  textColor: AppTheme.whiteColor),
                              AppText.appText("Renew Date",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  textColor: AppTheme.whiteColor),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.appText("ID-98747845687",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppTheme.whiteColor),
                              AppText.appText("16-09-2024",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  textColor: AppTheme.whiteColor),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
