import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CollectionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10.0, mainAxisSpacing: 5),
          itemCount: 15,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              child: Container(
                height: 100.h,
                width: 100.w,
                color: Colors.amberAccent,
              ),
            );
          },
        ),
      ),
    );
  }
}
