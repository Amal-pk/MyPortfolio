import 'package:flutter/material.dart';
import 'package:myportfolio/view/main_page/widgets/user_profile_card/bottom_card_widget.dart';
import 'package:myportfolio/view/main_page/widgets/user_profile_card/top_card_widget.dart';

class FlipFrontSide extends StatelessWidget {
  const FlipFrontSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const TopCardWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 20,
                color: Color.fromARGB(255, 3, 35, 61),
              ),
              Container(
                height: 30,
                width: 20,
                color: Color.fromARGB(255, 3, 35, 61),
              ),
            ],
          ),
          const BottomCardWidget(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
