import 'package:facebook/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 178,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    child: Image.asset("assets/images/messi_profile.jpg"),
                  ),
                ),
                SizedBox(height: 54),
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: -8,
            child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.white, width: 2),
                      color: AppColors.blue,
                    ),
                    child: Icon(Icons.add, size: 30, color: AppColors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      "Create a story",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.black,
                        fontWeight: FontWeight(600),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
