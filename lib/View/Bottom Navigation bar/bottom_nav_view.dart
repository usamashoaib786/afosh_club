import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/View/BookingScreen/booking.dart';
import 'package:afosh_club/View/HomeScreen/home_screen.dart';
import 'package:afosh_club/View/MessageScreen/message.dart';
import 'package:afosh_club/View/ProfileScreen/profile.dart';
import 'package:flutter/material.dart';

class BottomNavView extends StatefulWidget {
  const BottomNavView({super.key});

  @override
  State<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  var _currentIndex = 0;
  List screens = [
    const HomeScreen(),
    const BookingScreen(),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomNavItem(
                index: 0,
                currentIndex: _currentIndex,
                iconPath: "assets/images/home.png",
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              CustomNavItem(
                index: 1,
                currentIndex: _currentIndex,
                iconPath: "assets/images/profile.png",
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              CustomNavItem(
                index: 2,
                currentIndex: _currentIndex,
                iconPath: "assets/images/message.png",
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              ),
              CustomNavItem(
                index: 3,
                currentIndex: _currentIndex,
                iconPath: "assets/images/booking.png",
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}

// CustomNavItem Widget for reusable navigation items
class CustomNavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final VoidCallback onTap;

  const CustomNavItem({
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: currentIndex != index
              ? Colors.transparent
              : AppTheme.appColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            iconPath,
            color: currentIndex == index
                ? AppTheme.whiteColor
                : AppTheme.appColor,
            height: 24,
          ),
        ),
      ),
    );
  }
}
