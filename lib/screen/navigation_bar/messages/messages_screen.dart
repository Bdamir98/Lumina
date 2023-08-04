import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/screen/navigation_bar/messages/components/chat_screen.dart';

import '../../../constant/constant.dart';

class MessagesScreen extends StatelessWidget {
  TextEditingController searchController=TextEditingController();
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
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Icon(
                        Icons.menu,
                        size: 20,
                        color: const Color.fromARGB(255, 133, 132, 132),
                      ),
                    ),
                  ),
                  Text(
                    "Messeges",
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 20,
                        color: primaryColor),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
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
            SizedBox(height: 20.h,),
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
                      borderSide: BorderSide(width: 1, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color:Colors.grey, width: 1),
                    ),
                    prefixIcon: Icon(Icons.search,color: Colors.grey,),
                  ),
                ),
            ),
            SizedBox(height: 20.h,),
            Expanded(child: Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                 return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatScreen(),));
                  },
                   child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                             CircleAvatar(
                                      radius: 20,
                                      backgroundImage: NetworkImage(
                                        'https://img.freepik.com/premium-photo/i-dont-know-clueless-confused-brunette-man-shrugging-shoulders-frowning-perplexed-have-no-idea-cant-tell-standing-indecisive-against-white-background_176420-54776.jpg',
                                      ),
                                    ),
                              Expanded(
                                child: ListTile(
                                  title: Text('Amir Hossain'),
                                  subtitle: Text('Hello How are you'),
                                ),
                              ),
                             Text('2 minutes')
                            ],
                          ),
                            SizedBox(height: 10.h,),
                            Divider(height: 2,color: Colors.grey,),
                        ],
                      ),
                    ),
                 );
                },),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}