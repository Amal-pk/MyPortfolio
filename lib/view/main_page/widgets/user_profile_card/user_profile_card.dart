import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/view/main_page/widgets/user_profile_card/flip_back_side.dart';
import 'package:myportfolio/view/main_page/widgets/user_profile_card/flip_front_side.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FlipCard(
      speed: 1000,
      front: FlipFrontSide(),
      back: FlipBackSide(),
    );
  }
}
