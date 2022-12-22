import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/constants/images/images.dart';
import 'package:myportfolio/constants/text_styles/text_stlyes.dart';
import 'package:myportfolio/constants/texts/texts.dart';
import 'package:myportfolio/controllers/mainpage_controllers.dart';
import 'package:myportfolio/view/main_page/widgets/familiar_with/familiar_with.dart';
import 'package:myportfolio/view/main_page/widgets/skills/skills.dart';
import 'package:myportfolio/view/main_page/widgets/user_profile_card/user_profile_card.dart';

class MainPage extends GetView<MainPageController> {
  MainPage({super.key});
  final MainPageController mainPageController = Get.put(MainPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 100,
                width: double.infinity,
              ),
              const SizedBox(height: 50),
              const UserProfileCard(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  ConstantTexts.userDescription,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 0,
                  color: Colors.black,
                ),
              ),
              Text(
                "Skills",
                style: ConstantTxtStyles.headingStyle,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 0,
                  color: Colors.black,
                ),
              ),
              GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: ConstantImages.skillsImage.length,
                itemBuilder: (BuildContext context, int index) {
                  return SkillsWidget(
                      skillsName: ConstantTexts.skillsTexts[index],
                      skillsImage: ConstantImages.skillsImage[index]);
                },
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 0,
                  color: Colors.black,
                ),
              ),
              Text(
                "Familiar with",
                style: ConstantTxtStyles.headingStyle,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Stack(
                  children: List.generate(
                    ConstantImages.familiarWith.length,
                    (index) => FamiliarWithWidget(
                      radius: ConstantImages.familiarWithPositionRadius[index],
                      left: ConstantImages.familiarWithPositionLeft[index],
                      top: ConstantImages.familiarWithPositionTop[index],
                      image: ConstantImages.familiarWith[index],
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 100,
              // ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 0,
                  color: Colors.black,
                ),
              ),
              Text(
                "MAIN PROJECT",
                style: ConstantTxtStyles.headingStyle,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Divider(
                  thickness: 0,
                  color: Colors.black,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ConstantTexts.firstProjectName,
                      style: ConstantTxtStyles.projectHeading,
                    ),
                  ),
                  Text(ConstantTexts.firstProjectDate),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ConstantTexts.firstProjectDescription,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ConstantTexts.secondProjectName,
                      style: ConstantTxtStyles.projectHeading,
                    ),
                  ),
                  Text(ConstantTexts.secondProjectDate),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ConstantTexts.secondProjectDescription,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
