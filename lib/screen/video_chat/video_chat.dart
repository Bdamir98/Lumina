import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/constant/constant.dart';
import 'package:social_app/widgets/custom_title.dart';

class VideoChatScrenn extends StatelessWidget {
  const VideoChatScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.amberAccent,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/person4.jpg',),fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffC265E2),
                                child: Icon(
                                  Icons.record_voice_over,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text(
                                'Anto Gricy',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
                child: Container(
                  color: Colors.amberAccent,
                  child: Stack(
                    children: [
                      Container(
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/person5.jpg',),fit: BoxFit.fill)),
                    ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.w, right: 20.h,top: 210.h),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  height: 100,
                                  width: 130.w,
                                ),
                                Text(
                                  'Gown Arupora',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(width: 40.w,),
                                Container(
                                  height: 150.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/person3.jpg'),fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 205, 209, 211),
                        child: Icon(Icons.mic,color: const Color.fromARGB(255, 100, 100, 100),),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 205, 209, 211),
                        child: Icon(Icons.volume_up,color: const Color.fromARGB(255, 100, 100, 100),),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 205, 209, 211),
                        child: Icon(Icons.video_call,color: const Color.fromARGB(255, 100, 100, 100),),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffFF8743),
                        child: Icon(Icons.message,color: Colors.white,),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: primaryColor,
                        child: Icon(Icons.close,color: Colors.white,),
                      ),
                    ],
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
