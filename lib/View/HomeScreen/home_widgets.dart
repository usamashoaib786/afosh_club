import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  static homeAppBar({data}) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 20),
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
                AppText.appText("${data["applicant_name"]}",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    textColor: AppTheme.blackText),
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
      ),
    );
  }


}

// import 'package:afosh_club/Utils/resources/res/app_theme.dart';
// import 'package:afosh_club/Utils/widgets/others/app_text.dart';
// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final VoidCallback onBackTap;

//   const CustomAppBar({super.key, required this.title, required this.onBackTap});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: preferredSize.height,
//       child: SafeArea(
//         child:  ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(120.0);
// }
