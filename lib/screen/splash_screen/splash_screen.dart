import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth_page/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  // @override
  // void initState() {
  //   super.initState();
  //   _animationController = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 2), // Adjust the duration as needed
  //   );
  //   _animationController.repeat();
  // }
   @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Adjust the duration as needed
    );
    _animationController!.forward();
    _animationController!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        navigateToNextPage();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  void navigateToNextPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Color(0xffEB5153),
            Color.fromARGB(211, 235, 81, 84),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Column(
                children: [
                  Text(
                    'People Nearby',
                    style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  RotationTransition(
                    turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
                    child: Image.asset('assets/Group 1.png'),
                  ),
                  SizedBox(height: 50.h,),
                  Text(
                    'Searching People Nearby...',
                    style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
