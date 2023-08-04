import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void ShowModalBottoSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
        child: Padding(
          padding:
              EdgeInsets.only(top: 20.h, left: 40.w, right: 30.w, bottom: 30.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.w,
                  ),
                  Text(
                    'Select Option',
                    style: TextStyle(
                        fontFamily: 'GothamBold',
                        fontSize: 20,
                        color: Color.fromARGB(255, 46, 46, 46)),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff885FFF),
                        radius: 20,
                        child: Icon(Icons.photo_camera,color: Colors.white,),
                      ),
      
                      SizedBox(
                          height: 10
                              .h), // Add some spacing between the CircleAvatar and the Text
                      Text(
                        'Camera',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffFF8743),
                        radius: 20,
                        child: Icon(Icons.insert_photo,color: Colors.white,),
                      ),
      
                      SizedBox(
                          height: 10
                              .h), // Add some spacing between the CircleAvatar and the Text
                      Text(
                        'Galery',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffC265E2),
                        radius: 20,
                        child: Icon(Icons.upload_file,color: Colors.white,),
                      ),
      
                      SizedBox(
                          height: 10
                              .h), // Add some spacing between the CircleAvatar and the Text
                      Text(
                        'File',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff59B151),
                        radius: 20,
                        child: Icon(Icons.location_on,color: Colors.white,),
                      ),
      
                      SizedBox(
                          height: 10
                              .h), // Add some spacing between the CircleAvatar and the Text
                      Text(
                        'Location',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffFF5252),
                        radius: 20,
                        child: Icon(Icons.headphones,color: Colors.white,),
                      ),
      
                      SizedBox(
                          height: 10
                              .h), // Add some spacing between the CircleAvatar and the Text
                      Text(
                        'Audio',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffFFC83A),
                        radius: 20,
                        child: Icon(Icons.contacts,color: Colors.white,),
                      ),
      
                      SizedBox(
                          height: 10
                              .h), // Add some spacing between the CircleAvatar and the Text
                      Text(
                        'Contacts',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
