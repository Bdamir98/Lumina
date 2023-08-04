import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/constant.dart';

class NearbyDetailsScreen extends StatelessWidget {
  const NearbyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/person4.jpg',),fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.west,color: Colors.white,)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Andrew Ruth',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,color:Colors.white),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                      '13km',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
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
                                  'Send friend request',
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
