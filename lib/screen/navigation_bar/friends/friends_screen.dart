
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/constant.dart';

class FriendsScreen extends StatefulWidget {
  @override
  _FriendsScreenState createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  TextEditingController searchController = TextEditingController();
  String selectedCharacter = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                    "Friends",
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
              SizedBox(height: 20.h),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: searchController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 235, 235, 236),
                    filled: true,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: Row(
                  children: [
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
                            return Container(
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                        'https://img.freepik.com/premium-photo/inspired-young-handsome-man-looking-camera-doing-silece-gesture-purple-background_141793-131095.jpg'),
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
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 26,
                          itemBuilder: (context, index) {
                            final character = String.fromCharCode(65 + index);
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCharacter = character;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: selectedCharacter == character
                                      ? primaryColor
                                      : Colors.transparent,
                                  child: Text(
                                    character,
                                    style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 13,
                                      color: selectedCharacter == character
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
