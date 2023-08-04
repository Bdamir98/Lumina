import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/screen/nearBy_person/nearby_screen.dart';
import 'package:social_app/screen/new_post/new_post_screen.dart';
import 'package:social_app/screen/notifications_screen/notifications_screen.dart';
import 'package:social_app/widgets/custom_title.dart';

import '../../constant/constant.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      size: 20,
                      color: const Color.fromARGB(255, 133, 132, 132),
                    ),
                  ),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontSize: 20,
                      color: primaryColor),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Icon(
                      Icons.notifications,
                      size: 20,
                      color: const Color.fromARGB(255, 133, 132, 132),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleText('Musiani Wanda'),
                          SizedBox(
                            height: 10.h,
                          ),
                          SubTitleText('musianiwanda@gmail.com'),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/person1.jpg'),
                        radius: 20,
                        backgroundColor: Colors.black26,
                      )
                    ]),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText('Account'),
                                SubTitleText('Privacy, Change Number'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Divider(),
                    SizedBox(height: 10.h,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.message),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText('Chat'),
                                SubTitleText('Theme, walpaper, chat history'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Divider(),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.group),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText('New Group'),
                                SubTitleText('Create Group from Contacts'),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Divider(),
                    SizedBox(height: 10.h,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewPostScreen(),),);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.lock),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText('Security'),
                                  SubTitleText('Change Password'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                    SizedBox(height: 10.h,),
                    Divider(),
                    SizedBox(height: 10.h,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationsScreen(),),);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText('Notification'),
                                  SubTitleText('Message, group, ringtone'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                    SizedBox(height: 10.h,),
                    Divider(),
                    SizedBox(height: 10.h,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NearByScreen(),),);
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.help),
                              SizedBox(
                                width: 15.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TitleText('Help'),
                                  SubTitleText('Help center, contact us'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                  ),
                    SizedBox(height: 10.h,),
                    Divider(),
                    SizedBox(height: 10.h,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
