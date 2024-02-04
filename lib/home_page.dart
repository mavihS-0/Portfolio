import 'package:flutter/material.dart';
import 'package:portfolio/controllers/app_bar_controller.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/globals/text_styles.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    AppBarController appBarController = Get.put(AppBarController());

    var constants;
    if (screenSize < 800) {
      constants = MobileConstants();
      print('MobileHomePage');
    } else {
      constants = WebConstants();
      print('WebHomePage: screenSize: $screenSize');
    }
    return Scaffold(
      backgroundColor: constants.bgColor,
      appBar: AppBar(
        toolbarHeight: constants.appBarHeight,
        titleSpacing: constants.appBarTitleSpacing,
        backgroundColor: constants.bgColor,
        title: Text('Portfolio.',style: MyTextStyles.appBarTitle.copyWith(
          fontSize: constants.appBarTitleSize,
        ),),
        actions: [
          Obx(() =>
              TextButton(onPressed: (){}, child: Text(
                'About',
                style: MyTextStyles.appBarContents.copyWith(
                  color: appBarController.isAboutHovered.value ? constants.appBarContentsHovered : constants.appBarContentsColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
                onHover: (value){
                  appBarController.isAboutHovered.value = value;
                },
              ),),
          SizedBox(width: constants.appBarContentsSpacing,),
          Obx(() =>
              TextButton(onPressed: (){}, child: Text(
                'Projects',
                style: MyTextStyles.appBarContents.copyWith(
                  color: appBarController.isProjectsHovered.value ? constants.appBarContentsHovered : constants.appBarContentsColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
                onHover: (value){
                  appBarController.isProjectsHovered.value = value;
                },),),
          SizedBox(width: constants.appBarContentsSpacing,),
          Obx(() =>
              TextButton(onPressed: (){}, child: Text(
                'Services',
                style: MyTextStyles.appBarContents.copyWith(
                  color: appBarController.isServicesHovered.value ? constants.appBarContentsHovered : constants.appBarContentsColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
                onHover: (value){
                  appBarController.isServicesHovered.value = value;
                },),),
          SizedBox(width: constants.appBarContentsSpacing,),
          Obx(() =>
              TextButton(onPressed: (){}, child: Text(
                'Skills',
                style: MyTextStyles.appBarContents.copyWith(
                  color: appBarController.isSkillsHovered.value ? constants.appBarContentsHovered : constants.appBarContentsColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
                onHover: (value){
                  appBarController.isSkillsHovered.value = value;
                },
              ),),
          SizedBox(width: constants.appBarContentsSpacing,),
          Obx(() =>
              TextButton(onPressed: (){}, child: Text(
                'Contact Me',
                style: MyTextStyles.appBarContents.copyWith(
                  color: appBarController.isContactHovered.value ? Colors.black : constants.appBarContentsColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
                onHover: (value){
                  appBarController.isContactHovered.value = value;
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.5)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: constants.appBarContentsColor),
                    ),
                  ),
                ),
              ),),
          SizedBox(width: 100,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Portfolio.',
              style: MyTextStyles.appBarTitle.copyWith(
                fontSize: 30,
              ),
            ),
          ],
        ),
      )
    );
  }
}
