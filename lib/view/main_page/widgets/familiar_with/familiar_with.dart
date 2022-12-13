import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors/colors.dart';
import 'package:myportfolio/constants/images/images.dart';

class FamiliarWithWidget extends StatelessWidget {
  const FamiliarWithWidget({
    super.key,
    required this.radius,
  });
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ConstantColors.familiarGradient,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          radius: radius - 30,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: CircleAvatar(
              radius: radius,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                ConstantImages.gMailIcon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
