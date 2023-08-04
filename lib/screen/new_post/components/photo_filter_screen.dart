import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/widgets/custom_title.dart';

class PhotoFilterScreen extends StatelessWidget {
  const PhotoFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/person5.jpg'))),
            ),),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/person5.jpg'))),
                );
              },),
            ),),
            SizedBox(height: 10.h,),
            Expanded(
              flex: 3,
              child: Container(
              color: Colors.blue,
              child: Padding(
                padding:  EdgeInsets.only(top: 15.h,left: 15.w,right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText('Galery'),
                    Container(
                      height: 130,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 10.0, mainAxisSpacing: 5),
          itemCount: 20,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                height: 100.h,
                width: 100.w,
               decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/person1.jpg'))),
              ),
            );
          },
        ),
      ),
                  ],
                ),
              ),
            ),),
        ],
      ),
    );
  }
}