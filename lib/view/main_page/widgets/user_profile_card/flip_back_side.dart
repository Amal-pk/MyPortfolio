import 'package:flutter/material.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/text_styles/text_stlyes.dart';
import '../../../../constants/texts/texts.dart';

class FlipBackSide extends StatelessWidget {
  const FlipBackSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: ConstantColors.profileGradient,
        boxShadow: ConstantColors.profileBoxshadow,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            ConstantTexts.quote,
            style: ConstantTxtStyles.quoteStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
