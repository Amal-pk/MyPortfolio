import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors/colors.dart';
import 'package:myportfolio/constants/images/images.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: ConstantColors.profileGradient,
          boxShadow: ConstantColors.profileBoxshadow),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialMediaIcons(image: ConstantImages.gMailIcon),
          SocialMediaIcons(image: ConstantImages.linkedIcon),
          SocialMediaIcons(image: ConstantImages.gitHubIcon),
          SocialMediaIcons(image: ConstantImages.facebookIcon),
          SocialMediaIcons(image: ConstantImages.instagramIcon),
        ],
      ),
    );
  }
}

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ConstantColors.iconAndProfileBg,
      child: IconButton(
        onPressed: () {},
        icon: Image(
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
