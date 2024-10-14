import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HR Maverix',
        theme: ThemeData(
         scaffoldBackgroundColor: AppTheme.whiteColor
        ),
        home: const SplashScreen(),
      );
    });
  }
}
