import 'package:flutter/material.dart';
import 'package:myportfolio/constants/images/images.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget(
      {super.key, required this.skillsName, required this.skillsImage});
  final String skillsName;
  final String skillsImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.,
        children: [
          Container(
            height: 60,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  skillsImage,
                ),
              ),
            ),
          ),
          Text(
            skillsName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
