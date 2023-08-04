import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                 return Container(
                    child: Column(
                      children: [
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
                                title: Text('Amir Hossain'),
                                subtitle: Text('2 minutes'),
                              ),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                         SizedBox(height: 5.h,),
                        Text('Look my collection, I really want to share about my last trip to Bali. Please check guys!'),
                        SizedBox(height: 5.h,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network('https://www.holidify.com/images/bgImages/BALI.jpg'),), 
                          SizedBox(height: 10.h,),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.comment,color: Colors.grey,),
                                  SizedBox(width: 10.w,),
                                  Text('24k',style: TextStyle(
                                    color: Colors.grey
                                  ),),
                                ],
                              ),
                              SizedBox(width: 20.w,),
                              Row(
                                children: [
                                  Icon(Icons.linked_camera,color: Colors.grey,),
                                  SizedBox(width: 10.w,),
                                  Text('24k',style: TextStyle(
                                    color: Colors.grey
                                  ),),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h,),
                          Divider(height: 2,color: Colors.grey,),
                      ],
                    ),
                  );
                },),
              ));
    
  }
}