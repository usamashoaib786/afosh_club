import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  static homeAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  AppText.appText("Usama",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      textColor: AppTheme.blackText),
                  AppText.appText("Administrator",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textColor: AppTheme.text8C)
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppTheme.appColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/images/notification.png",
                  color: AppTheme.whiteColor,
                  height: 24,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}
