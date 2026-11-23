import 'package:facebook/core/theme/app_colors.dart';
import 'package:facebook/modules/home/widgets/create_story.dart';
import 'package:facebook/modules/home/widgets/post_view.dart';
import 'package:facebook/modules/home/widgets/view_story.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: Image.asset("assets/images/facebook_home.png", width: 155),
        actions: [
          Image.asset("assets/icons/Plus.png", width: 22),
          SizedBox(width: 12),
          Image.asset("assets/icons/Search.png", width: 22),
          SizedBox(width: 12),
          Image.asset("assets/icons/Messenger.png", width: 22),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/home.png", width: 24),

                  Image.asset("assets/icons/reels.png", width: 24),

                  Image.asset("assets/icons/Store.png", width: 24),

                  Image.asset("assets/icons/Profile.png", width: 24),

                  Image.asset("assets/icons/Notification.png", width: 24),

                  CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage(
                      'assets/images/messi_profile.jpg',
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: AppColors.gray),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'assets/images/messi_profile.jpg',
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      "What's in Your Mind?",
                      style: TextStyle(color: AppColors.gray, fontSize: 14),
                    ),
                  ),
                  Image.asset("assets/icons/Photos.png", width: 23),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.gray),
            Container(
              padding: EdgeInsets.only(left: 11, top: 8),
              height: 200,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildStory(index),
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemCount: 4,
              ),
            ),
            SizedBox(height: 10),
            Divider(thickness: 2, color: AppColors.gray),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => buildPost(index),
              separatorBuilder: (context, index) => SizedBox(height: 2),
              itemCount: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStory(int index) {
    if (index == 0) {
      return CreateStory();
    } else {
      return VeiwStory();
    }
  }

  Widget buildPost(int index) {
    return PostView();
  }
}
