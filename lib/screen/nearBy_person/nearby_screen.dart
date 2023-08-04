import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/constant.dart';
import 'nearby_details_screen.dart';

class NearByScreen extends StatelessWidget {
  const NearByScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 25.h,left: 20.w,right: 20.w),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                          Icons.west,
                          size: 20,
                          color: Colors.black,
                        ),
                  ),
                      SizedBox(width: 100.w,),
                  Text(
                    "Nearby People",
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 20,
                        color: primaryColor),
                  ),
        
                ],
              ),
              SizedBox(height: 10.h,),
              Expanded(
                      flex: 5,
                      child: Container(
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NearbyDetailsScreen(),));
                              },
                              child: Container(
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                          'assets/person5.jpg'),
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      'Amir Hossain',
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          fontSize: 13,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      'United States',
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          fontSize: 10,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}