import 'package:facebook/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8, right: 10),
                          width: 53,
                          height: 53,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/route_logo.png",
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Route",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "8h .",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight(500),
                                    color: AppColors.gray,
                                  ),
                                ),
                                Image.asset("assets/icons/planet.png"),
                              ],
                            ),
                          ],
                        ),

                        Spacer(),
                        Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/palstineRoute_logo.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.asset("assets/icons/heart.png"),
                        SizedBox(width: 8),
                        Image.asset("assets/icons/comments.png"),
                        SizedBox(width: 8),
                        Image.asset("assets/icons/share.png"),
                        Spacer(),
                        Image.asset("assets/icons/save.png"),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black),
                ],
              ),
            );
  }
}