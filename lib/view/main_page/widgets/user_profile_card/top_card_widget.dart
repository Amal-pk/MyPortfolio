import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors/colors.dart';
import 'package:myportfolio/constants/images/images.dart';
import 'package:myportfolio/constants/text_styles/text_stlyes.dart';
import 'package:myportfolio/constants/texts/texts.dart';

class TopCardWidget extends StatelessWidget {
  const TopCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: ConstantColors.profileGradient,
        boxShadow: ConstantColors.profileBoxshadow,
      ),
      child: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: 12,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(1),
                  bottomRight: Radius.circular(55),
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(33),
                ),
                color: ConstantColors.iconAndProfileBg,
                image: DecorationImage(
                  image: AssetImage(
                    ConstantImages.userProfile,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            right: 10,
            left: 90,
            child: Column(
              children: [
                Text(
                  ConstantTexts.userName,
                  style: ConstantTxtStyles.userNameStyle,
                ),
                const SizedBox(height: 15),
                Text(
                  ConstantTexts.domainName,
                  style: ConstantTxtStyles.domainNameStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
