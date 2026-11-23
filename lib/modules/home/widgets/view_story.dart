import 'package:facebook/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class VeiwStory extends StatelessWidget {
  const VeiwStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: 112,
      height: 178,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.asset("assets/images/messi.jpg", fit: BoxFit.cover),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.blue, width: 1),
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/goat.jpg",
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
