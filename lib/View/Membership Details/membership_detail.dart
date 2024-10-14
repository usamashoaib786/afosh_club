import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/Utils/widgets/others/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MemberShipDetailScreen extends StatefulWidget {
  const MemberShipDetailScreen({super.key});

  @override
  State<MemberShipDetailScreen> createState() => _MemberShipDetailScreenState();
}

class _MemberShipDetailScreenState extends State<MemberShipDetailScreen> {

  List img = [
    "assets/images/phone.png",
    "assets/images/cnic.png",
    "assets/images/calendar.png",
    "assets/images/calendar.png",
    "assets/images/fee.png",
    "assets/images/fee.png",
    "assets/images/memberType.png",
  ];
  List txt1 = [
    "Phone NO",
    "CNIC",
    "Joining Date",
    "Renew Date",
    "Membership Fee",
    "Renew Fees",
    "Membership Type",
  ];
  List txt2 = [
    "+92-313-4598073",
    "35202-1353041-1",
    "24-07-2023",
    "24-07-2024",
    "25,000Pkr",
    "25,000Pkr",
    "Premium Membership",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Membership Detail",
          onBackTap: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 50,
              child: ClipOval(child: Image.asset("assets/images/imge me.jpg")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom:5),
              child: AppText.appText("Usama Shoaib",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  textColor: AppTheme.blackText),
            ),
            AppText.appText("ID-98747845687",
                fontSize: 13,
                fontWeight: FontWeight.w400,
                textColor: AppTheme.textAB),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 10,
                color: AppTheme.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int i = 0; i < 7; i++)
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          height: 40,
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 223, 224, 226)),
                                child: Center(
                                  child: Image.asset(
                                    "${img[i]}",
                                    height: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.appText("${txt1[i]}",
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      textColor: const Color(0xff181D27)),
                                  AppText.appText("${txt2[i]}",
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      textColor: AppTheme.textAB),
                                ],
                              )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
