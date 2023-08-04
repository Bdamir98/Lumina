import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/constant.dart';
import '../navigation_bar/messages/components/bottom_sheet.dart';

class StoryScreen extends StatelessWidget {
   StoryScreen({super.key});
TextEditingController commentController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'assets/person4.jpg'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w,bottom: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/person4.jpg'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Adam Jardan',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '1m',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                  ],
                ),
                Container(
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: commentController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        hintText: "Comment here",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white, width: 1),
                        ),
                        prefixIcon: InkWell(
                          onTap: () {
                            ShowModalBottoSheet(context);
                          },
                          child: Icon(
                            Icons.attach_file,
                            color: Colors.white,
                          ),
                        ),
                        // suffixIcon: Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       border: Border.all(
                        //         color: const Color.fromARGB(48, 255, 255, 255)
                        //       ),
                        //       shape: BoxShape.circle,
                        //     ),
                        //     child: Center(
                        //       child: Icon(
                        //         Icons.near_me,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // ),
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
