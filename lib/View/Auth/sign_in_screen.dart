import 'package:afosh_club/Constants/app_logger.dart';
import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/utils.dart';
import 'package:afosh_club/Utils/widgets/others/app_button.dart';
import 'package:afosh_club/Utils/widgets/others/app_field.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/View/Bottom%20Navigation%20bar/bottom_nav_view.dart';
import 'package:afosh_club/config/dio/app_dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;
  late AppDio dio;
  AppLogger logger = AppLogger();
  @override
  void initState() {
    dio = AppDio(context);
    logger.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/signIn.png",
              height: 128,
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomAppFormField(
                  texthint: "Email",
                  controller: _emailController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomAppPasswordfield(
                  texthint: "Password",
                  controller: _passwordController,
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: AppText.appText("Forgot your password?",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      textColor: AppTheme.appColor),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppButton.appButton("LOGIN", onTap: () async {
                 push(context, const BottomNavView());

                  if (_emailController.text.isNotEmpty) {
                    final emailPattern =
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailPattern.hasMatch(_emailController.text)) {
                      Fluttertoast.showToast(
                          msg: "Please enter a valid email address");
                    } else {
                      if (_passwordController.text.isNotEmpty) {
                      } else {
                        Fluttertoast.showToast(msg: "Enter Password");
                      }
                    }
                  } else {
                    Fluttertoast.showToast(msg: "Enter Email");
                  }
                },
                    textColor: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    height: 50,
                    radius: 10.0,
                    width: ScreenSize(context).width,
                    backgroundColor: AppTheme.appColor)
              ],
            )
          ],
        ),
      ),
    );
  }

  // void signIn(context) async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   Response response;
  //   int responseCode200 = 200; // For successful request.
  //   int responseCode400 = 400; // For Bad Request.
  //   int responseCode401 = 401; // For Unauthorized access.
  //   int responseCode404 = 404; // For For data not found
  //   int responseCode422 = 422; // For For data not found

  //   int responseCode500 = 500; // Internal server error.
  //   Map<String, dynamic> params = {
  //     "email": _emailController.text,
  //     "password": _passwordController.text,
  //     "device_id": _deviceID,
  //   };
  //   try {
  //     response = await dio.post(path: AppUrls.logIn, data: params);
  //     var responseData = response.data;
  //     if (response.statusCode == responseCode400) {
  //       Fluttertoast.showToast(msg: "${responseData["message"]}");
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     } else if (response.statusCode == responseCode401) {
  //       Fluttertoast.showToast(msg: "${responseData["message"]}");
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     } else if (response.statusCode == responseCode404) {
  //       Fluttertoast.showToast(msg: "${responseData["message"]}");
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     } else if (response.statusCode == responseCode500) {
  //       Fluttertoast.showToast(msg: "${responseData["message"]}");
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     } else if (response.statusCode == responseCode422) {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     } else if (response.statusCode == responseCode200) {
  //       if (responseData["status"] == false) {
  //         Fluttertoast.showToast(msg: "${responseData["message"]}");
  //         setState(() {
  //           _isLoading = false;
  //         });

  //         return;
  //       } else {
  //         if (responseData["message"] != null) {
  //           Fluttertoast.showToast(msg: "${responseData["message"]}");
  //           setState(() {
  //             _isLoading = false;
  //           });
  //         }

  //         if (responseData["message"] != "Invalid email or password!") {
  //           setState(() {
  //             _isLoading = false;
  //           });
  //           var token = responseData["user"]["api_token"];
  //           var user = responseData["user"]["id"];
  //           var userName = responseData["user"]["name"];
  //           var userEmail = responseData["user"]["email"];
  //           var designation = responseData["designation_title"];
  //           var department = responseData["departments"];
  //           var userPhone = responseData["user"]["contact_no_one"];
  //           var userType = responseData["user"]["role"];
  //           var id = user.toString();
  //           SharedPreferences prefs = await SharedPreferences.getInstance();
  //           prefs.setString(PrefKey.authorization, token ?? '');
  //           prefs.setString(PrefKey.id, id);
  //           prefs.setString(PrefKey.userName, userName ?? '');
  //           prefs.setString(PrefKey.email, userEmail ?? '');
  //           prefs.setString(PrefKey.phone, userPhone ?? '');
  //           prefs.setString(PrefKey.designation, designation ?? '');
  //           prefs.setString(PrefKey.department, department ?? '');
  //           prefs.setString(PrefKey.userType, userType ?? '');

  //           Navigator.pushAndRemoveUntil(
  //               context,
  //               MaterialPageRoute(
  //                 builder: (context) => const BottomNavView(),
  //               ),
  //               (route) => false);
  //         }
  //       }
  //     }
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print("Something went Wrong $e");
  //     }
  //     Fluttertoast.showToast(msg: "Something went Wrong.");
  //     setState(() {
  //       _isLoading = false;
  //     });
  //   }
  // }
}
