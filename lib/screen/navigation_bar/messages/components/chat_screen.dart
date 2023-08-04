import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/constant/constant.dart';
import 'package:social_app/screen/video_chat/video_chat.dart';

import '../../../../widgets/custom_title.dart';
import 'bottom_sheet.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.arrow_back)),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/happiness-wellbeing-confidence-concept-cheerful-attractive-african-american-woman-curly-haircut-cross-arms-chest-self-assured-powerful-pose-smiling-determined-wear-yellow-sweater_176420-35063.jpg?w=2000'),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleText('Theresa Webb'),
                              SubTitleText('Online'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call,
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoChatScrenn(),));
                            },
                            child: Icon(
                              Icons.video_camera_front,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: ClipPath(
                              clipper:
                                  UpperNipMessageClipper(MessageType.receive),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: TitleText('Hello How are you?'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: ClipPath(
                              clipper: LowerNipMessageClipper(MessageType.send),
                              child: Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: TitleText('Hi, Iam Fine and you?'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: messageController,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
