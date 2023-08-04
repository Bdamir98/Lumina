import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/constant.dart';
import 'components/photo_filter_screen.dart';

class PostModifyScreen extends StatefulWidget {
  PostModifyScreen({super.key});

  @override
  State<PostModifyScreen> createState() => _PostModifyScreenState();
}

class _PostModifyScreenState extends State<PostModifyScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    "New Post",
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 20,
                        color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.east,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
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
                                  'Post',
                                  style: TextStyle(
                                    color: _currentPageIndex == 0
                                        ? primaryColor // Selected color
                                        : Colors.grey, // Unselected color
                                    fontSize: 18.0,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 2,
                                  width: 80,
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
                                  'Story',
                                  style: TextStyle(
                                    color: _currentPageIndex == 1
                                        ? primaryColor // Selected color
                                        : Colors.grey, // Unselected color
                                    fontSize: 18.0,
                                  ),
                                ),
                                 SizedBox(height: 10,),
                                Container(
                                  height: 2,
                                  width: 80,
                                  color: _currentPageIndex == 1
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
                              _currentPageIndex = 2;
                            });
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Text(
                                  'Live',
                                  style: TextStyle(
                                    color: _currentPageIndex == 2
                                        ? primaryColor // Selected color
                                        : Colors.grey, // Unselected color
                                    fontSize: 18.0,
                                  ),
                                ),
                                 SizedBox(height: 10,),
                                Container(
                                  height: 2,
                                  width: 80,
                                  color: _currentPageIndex == 2
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
                         PhotoFilterScreen(),
                          Text('Story'),
                          Text('Live'),
                          //PostsScreen(),
                          //CollectionsScreen(),
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
