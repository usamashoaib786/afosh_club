import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBackTap;

  const CustomAppBar({super.key, required this.title, required this.onBackTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onBackTap,
                    child: SizedBox(
                      height:24 ,
                      child: Image.asset(
                        'assets/images/backArrow.png',
                        height: 24.0,
                        width: 15.0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  AppText.appText(
                    title,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textColor: AppTheme.blackText,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 1,
              width: ScreenSize(context).width,
              color: const Color(0xffDDDDDD),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120.0);
}
