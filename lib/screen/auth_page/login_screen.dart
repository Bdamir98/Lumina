import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:social_app/constant/constant.dart';
import 'package:social_app/screen/auth_page/signup_screen.dart';
import 'package:social_app/screen/navigation_bar/navigation_bar_screen.dart';

import '../../provider/custom_provider.dart';
import '../../widgets/custom_textField.dart';
import '../../widgets/custom_title.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 50.h),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        fontFamily: 'GothamBold',
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RegularTitle('Email'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomTextField(
                              hintText: 'Enter Your Email Here',
                              cont: emailController),
                          SizedBox(
                            height: 40.h,
                          ),
                          RegularTitle('Password'),
                          SizedBox(
                            height: 20.h,
                          ),
                          Consumer<CustomProvider>(
                            builder: (context, obscureTextProvider, _) {
                              return CustomTextField(
                                hintText: 'Minimum 8 Characters',
                                cont: passwordController,
                                obs: obscureTextProvider.obscureText,
                                suffIcon: IconButton(
                                  icon: Icon(
                                    obscureTextProvider.obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: primaryColor,
                                  ),
                                  onPressed: () {
                                    obscureTextProvider.toggleObscureText();
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: RegularTitle('Forgot Password?')),
                          SizedBox(
                            height: 40.h,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => NavigationBarScreen(),));
                            },
                            child: Container(
                              height: 55,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: primaryColor,
                              ),
                              child: Center(
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child:
                                  RegularTitle('Login with existing account?')),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey)),
                                  child: Image.asset(
                                    'assets/icon/google.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey)),
                                  child: Image.asset(
                                    'assets/icon/apple.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(13),
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey)),
                                  child: Image.asset(
                                    'assets/icon/facebook.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RegularTitle('Dont have an account'),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen(),));
                                },
                                child: Text(
                                  '? Sign up',
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 13,
                                      color: primaryColor),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
