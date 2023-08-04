import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/widgets/custom_title.dart';

import '../../../../constant/constant.dart';
import '../../messages/components/bottom_sheet.dart';

class CommentsScreen extends StatelessWidget {
   CommentsScreen({super.key});
TextEditingController commentsController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex:1,
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.only(left: 15.w,right: 10.w,top: 10.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://img.freepik.com/free-photo/happiness-wellbeing-confidence-concept-cheerful-attractive-african-american-woman-curly-haircut-cross-arms-chest-self-assured-powerful-pose-smiling-determined-wear-yellow-sweater_176420-35063.jpg?w=2000'),
                        radius: 25,
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: ListTile(
                          title: TitleText('Comments 24k from Amir Hossain Post'),
                          subtitle: SubTitleText('2 Minutes'),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Icon(Icons.south),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                        height: 1,
                        color: const Color.fromARGB(155, 158, 158, 158),
                      ),
                      SizedBox(height: 20.h,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.w,),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: AssetImage('assets/person1.jpg'),
                            ),
                             SizedBox(width: 15.w,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText('Abil Wardani'),
                                SizedBox(height: 10.h,),
                                SubTitleText('1 minutes'),
                               SizedBox(height: 10.h,),
                                RegularTitle('So beautiful picture'),
                                  SizedBox(height: 10.h,),
                                  Row(
                                    children: [
                                      Icon(Icons.comment,color: Colors.grey,),
                                      SizedBox(width: 10.w,),
                                      SubTitleText('3k'),
                                       SizedBox(width: 25.w,),
                                       Icon(Icons.favorite,color: Colors.grey,),
                                      SizedBox(width: 10.w,),
                                      SubTitleText('1.3k'),
                                    ],
                                  ),
                              ],
                             )
                          ],
                        ),
                      ),
                      ],
                    ),
                  );
                },),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 20.h,left: 10.w,right: 10.w,bottom: 10.h),
                  child: TextFormField(
                    controller: commentsController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 235, 235, 236),
                      filled: true,
                      hintText: "Your Message",
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
                      prefixIcon: InkWell(
                        onTap: () {
                          ShowModalBottoSheet(context);
                        },
                        child: Icon(
                          Icons.attach_file,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.near_me,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
