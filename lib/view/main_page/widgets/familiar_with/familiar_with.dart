import 'package:flutter/material.dart';
import 'package:myportfolio/constants/colors/colors.dart';
import 'package:myportfolio/constants/images/images.dart';

class FamiliarWithWidget extends StatelessWidget {
  const FamiliarWithWidget({
    super.key,
    required this.radius,
    required this.left,
    required this.top,
    required this.image,
  });
  final String image;
  final double radius;
  final double left;
  final double top;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Container(
        decoration: BoxDecoration(
          gradient: ConstantColors.familiarGradient,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            radius: radius,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: radius - 2,
              
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
