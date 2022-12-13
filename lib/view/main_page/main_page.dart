import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/controllers/mainpage_controllers.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SizedBox(
                height: 100,
                width: double.infinity,
              ),
              SizedBox(height: 50),
              UserProfileCard(),
            ],
          ),
        ),
      ),
    );
  }
}
