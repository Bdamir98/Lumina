import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/widgets/custom_title.dart';

import '../../constant/constant.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: 25.h,
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontSize: 20,
                      color: primaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubTitleText('Today'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person4.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Oban robert'),
                          subtitle: Text('respont to your story'),
                        ),
                      ),
                      Text('20 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person3.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Natalia'),
                          subtitle: Text('Like your story'),
                        ),
                      ),
                      Text('2 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person2.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Roben'),
                          subtitle: Text('Started following you'),
                        ),
                      ),
                      Text('40 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 30.h,),
                  SubTitleText('Yesterday'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person1.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Anggi'),
                          subtitle: Text('Started following you'),
                        ),
                      ),
                      Text('36 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person5.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Pedro'),
                          subtitle: Text('Like your story'),
                        ),
                      ),
                      Text('26 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person4.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Mia'),
                          subtitle: Text('Respond your story'),
                        ),
                      ),
                      Text('15 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 30.h,),
                  SubTitleText('This week'),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                       backgroundImage: AssetImage(
                          'assets/person3.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Emri'),
                          subtitle: Text('respont to your story'),
                        ),
                      ),
                      Text('17 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person1.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('Ryan'),
                          subtitle: Text('Like your story'),
                        ),
                      ),
                      Text('21 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/person2.jpg',
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('James'),
                          subtitle: Text('Started following you'),
                        ),
                      ),
                      Text('33 minutes ago')
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),),
          ],
        ),
      )),
    );
  }
}
