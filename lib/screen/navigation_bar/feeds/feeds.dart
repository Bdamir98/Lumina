import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/constant/constant.dart';
import 'package:social_app/screen/navigation_bar/feeds/components/comments_screen.dart';
import 'package:social_app/widgets/custom_textField.dart';

import '../../story_screen/story_screen.dart';
import 'components/other_friends_profile_screen.dart';

class FeedsScreen extends StatelessWidget {
  FeedsScreen({super.key});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  "Feeds",
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
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/headshot-beautiful-dark-skinned-curly-has-pleased-expression-rejoices-success-enjoys-spare-time-wears-casual-t-shirt-isolated-yellow-wall-people-positive-emotions-feelings-concept_273609-27729.jpg'),
                  radius: 30,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Navigate to the desired page based on the index
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    StoryScreen(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffC683E5),
                                  ),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                      'https://img.freepik.com/free-photo/portrait-handsome-man-with-dark-hairstyle-bristle-toothy-smile-dressed-white-sweatshirt-feels-very-glad-poses-indoor-pleased-european-guy-being-good-mood-smiles-positively-emotions-concept_273609-61405.jpg',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  'Amir Hossain',
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize: 10,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: Container(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    OtherFriendsProfileScreen(),
                              ),
                            );
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  'https://img.freepik.com/premium-photo/i-dont-know-clueless-confused-brunette-man-shrugging-shoulders-frowning-perplexed-have-no-idea-cant-tell-standing-indecisive-against-white-background_176420-54776.jpg',
                                ),
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
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                            'Look my collection, I really want to share about my last trip to Bali. Please check guys!'),
                        SizedBox(
                          height: 5.h,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                              'https://www.holidify.com/images/bgImages/BALI.jpg'),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommentsScreen(),));
                                  },
                                  child: Icon(
                                    Icons.comment,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  '24k',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  '24k',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
