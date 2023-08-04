import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/screen/new_post/post_modify_screen.dart';
import 'package:social_app/widgets/custom_title.dart';

import '../../constant/constant.dart';

class NewPostScreen extends StatelessWidget {
  NewPostScreen({super.key});
  TextEditingController postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w, bottom: 15.h),
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
                    "New Post",
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 20,
                        color: primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 70.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: primaryColor,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset('assets/person5.jpg',height: 70.h,width: 70.w,),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                child: TextFormField(
                  maxLines: 4,
                  controller: postController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: "What you want to say?",
                    hintStyle: TextStyle(
                      fontFamily: "GothamMedium",
                      color: const Color.fromARGB(255, 121, 120, 120),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TitleText('Tag People'),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 5.h,
              ),
              TitleText('Add location'),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 5.h,
              ),
              TitleText('Add music'),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 5.h,
              ),
              TitleText('Feeling or activity'),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 30.h,
              ),
              SubTitleText('Share to'),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/icon/facebook.png',),
                        radius: 15,
                        backgroundColor: Colors.yellowAccent,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      TitleText('Facebook'),
                    ],
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset('assets/icon/icons8_instagram_480px.png',),
                        radius: 15,
                        backgroundColor: primaryColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      TitleText('Instagram'),
                    ],
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 4, 45, 78),
                        child: Image.asset('assets/icon/icons8_twitter_480px.png',),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      TitleText('twitter'),
                    ],
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  )
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostModifyScreen(),));
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Post Now',
                      style: TextStyle(
                          fontFamily: 'GothamMedium',
                          fontSize: 17,
                          color: Colors.white),
                    ),
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
