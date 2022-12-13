import 'package:flutter/material.dart';
import 'package:myportfolio/constants/images/images.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ConstantImages.instagramIcon,
                ),
              ),
            ),
          ),
          const Text('Skill name'),
        ],
      ),
    );
  }
}
