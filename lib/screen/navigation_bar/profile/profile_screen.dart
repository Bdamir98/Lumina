import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/constant.dart';
import 'components/collections_screen.dart';
import 'components/post_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 15.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      size: 20,
                      color: const Color.fromARGB(255, 133, 132, 132),
                    ),
                  ),
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontFamily: 'GothamMedium',
                    fontSize: 20,
                    color: primaryColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
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
              height: 30.h,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/premium-photo/closeup-amazed-childish-cute-girl-checkered-shirt-standing-with-pout-lips-making-fish-face-having-fun-showing-surprised-silly-expression-indoor-studio-shot-isolated-pink-background_416530-26059.jpg'),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Musiani Wanda",
                              style: TextStyle(
                                  fontFamily: 'GothamBold',
                                  fontSize: 22,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Designer @HeBoui",
                              style: TextStyle(
                                  fontFamily: 'GothamRegular',
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Indipendent Women",
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Post",
                                style: TextStyle(
                                    fontFamily: 'GothamRegular',
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "1,312",
                                style: TextStyle(
                                    fontFamily: 'GothamBold',
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontFamily: 'GothamRegular',
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "2.1M",
                                style: TextStyle(
                                    fontFamily: 'GothamBold',
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Friends",
                                style: TextStyle(
                                    fontFamily: 'GothamRegular',
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "2,523",
                                style: TextStyle(
                                    fontFamily: 'GothamBold',
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(0,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                            setState(() {
                              _currentPageIndex = 0;
                            });
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Text(
                                  'Posts',
                                  style: TextStyle(
                                    color: _currentPageIndex == 0
                                        ? primaryColor // Selected color
                                        : Colors.black, // Unselected color
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 2,
                                  width: 150,
                                  color: _currentPageIndex == 0
                                        ? primaryColor // Selected color
                                        : Colors.transparent,
                                ),
                               
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _pageController.animateToPage(1,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                            setState(() {
                              _currentPageIndex = 1;
                            });
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Text(
                                  'Collections',
                                  style: TextStyle(
                                    color: _currentPageIndex == 1
                                        ? primaryColor // Selected color
                                        : Colors.black, // Unselected color
                                    fontSize: 18.0,
                                  ),
                                ),
                                 SizedBox(height: 10,),
                                Container(
                                  height: 2,
                                  width: 150,
                                  color: _currentPageIndex == 1
                                        ? primaryColor // Selected color
                                        : Colors.transparent,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        children: [
                          PostsScreen(),
                          CollectionsScreen(),
                        ],
                      ),
                    ),
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
