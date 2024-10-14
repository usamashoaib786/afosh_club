import 'package:afosh_club/Constants/app_logger.dart';
import 'package:afosh_club/Utils/global.dart';
import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:afosh_club/Utils/widgets/others/app_button.dart';
import 'package:afosh_club/Utils/widgets/others/app_field.dart';
import 'package:afosh_club/Utils/widgets/others/app_text.dart';
import 'package:afosh_club/View/Bottom%20Navigation%20bar/bottom_nav_view.dart';
import 'package:afosh_club/config/app_urls.dart';
import 'package:afosh_club/config/dio/app_dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _cnicController = TextEditingController();
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
                  texthint: "CNIC",
                  controller: _cnicController,
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
                AppButton.appButton(
                  "LOGIN",
                  onTap: () async {
                    final cnicPattern = RegExp(r'^\d{5}-\d{7}-\d{1}$');

                    if (_cnicController.text.isNotEmpty) {
                      if (!cnicPattern.hasMatch(_cnicController.text)) {
                        Fluttertoast.showToast(
                            msg:
                                "Please enter a valid CNIC number (XXXXX-XXXXXXX-X)");
                      } else {
                        if (_passwordController.text.isNotEmpty) {
                          signIn(context);
                        } else {
                          Fluttertoast.showToast(msg: "Enter Password");
                        }
                      }
                    } else {
                      Fluttertoast.showToast(msg: "Enter CNIC");
                    }
                  },
                  textColor: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 50,
                  radius: 10.0,
                  width: ScreenSize(context).width,
                  backgroundColor: AppTheme.appColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void signIn(context) async {
    setState(() {
      isLoading = true;
    });
    Response response;
    int responseCode200 = 200; // For successful request.
    int responseCode400 = 400; // For Bad Request.
    int responseCode401 = 401; // For Unauthorized access.
    int responseCode404 = 404; // For For data not found
    int responseCode422 = 422; // For For data not found

    int responseCode500 = 500; // Internal server error.
    Map<String, dynamic> params = {
      "cnic": _cnicController.text,
      "password": _passwordController.text,
    };
    try {
      response = await dio.post(path: AppUrls.logIn, data: params);
      var responseData = response.data;
      if (response.statusCode == responseCode400) {
        Fluttertoast.showToast(msg: "${responseData["message"]}");
        setState(() {
          isLoading = false;
        });
      } else if (response.statusCode == responseCode401) {
        Fluttertoast.showToast(msg: "${responseData["message"]}");
        setState(() {
          isLoading = false;
        });
      } else if (response.statusCode == responseCode404) {
        Fluttertoast.showToast(msg: "${responseData["message"]}");
        setState(() {
          isLoading = false;
        });
      } else if (response.statusCode == responseCode500) {
        Fluttertoast.showToast(msg: "${responseData["message"]}");
        setState(() {
          isLoading = false;
        });
      } else if (response.statusCode == responseCode422) {
        setState(() {
          isLoading = false;
        });
      } else if (response.statusCode == responseCode200) {
        if (responseData["status"] == false) {
          Fluttertoast.showToast(msg: "${responseData["message"]}");
          setState(() {
            isLoading = false;
          });

          return;
        } else {
   GlobalVariable().apiData = responseData["data"];
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) =>  BottomNavView(data: responseData["data"],),
              ),
              (route) => false);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Something went Wrong $e");
      }
      Fluttertoast.showToast(msg: "Something went Wrong.");
      setState(() {
        isLoading = false;
      });
    }
  }
}
