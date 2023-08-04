import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:social_app/constant/constant.dart';
import 'package:social_app/screen/auth_page/login_screen.dart';

import '../../provider/custom_provider.dart';
import '../../widgets/custom_textField.dart';
import '../../widgets/custom_title.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        fontFamily: 'GothamBold',
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 10,
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
                          RegularTitle('Name'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomTextField(
                              hintText: 'Enter Your Name',
                              cont: emailController),
                              SizedBox(
                            height: 30.h,
                          ),
                          RegularTitle('Email'),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomTextField(
                              hintText: 'Enter Your Email Here',
                              cont: emailController),
                          SizedBox(
                            height: 30.h,
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
                            height: 30.h,
                          ),
                          Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child:
                                  RegularTitle('Continue with existing account?')),
                          SizedBox(
                            height: 30.h,
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
                              RegularTitle('Already have an account'),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                                },
                                child: Text(
                                  '? Log in',
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
