import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:portfolio/controllers/hover_controller.dart';
import 'package:portfolio/controllers/projectsController.dart';
import 'package:portfolio/data/projects.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/globals/text_styles.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/about_content.dart';
import 'package:portfolio/widgets/elevated_card_widget.dart';
import 'package:portfolio/widgets/profile_photo.dart';
import 'package:portfolio/widgets/socials_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    HoverController hoverController = Get.put(HoverController());
    ProjectsController projectsController = Get.put(ProjectsController());

    var constants;
    bool isPhone;
    if (screenSize < 800) {
      isPhone = true;
      constants = MobileConstants();
      print('MobileHomePage');
    } else {
      isPhone = false;
      constants = WebConstants();
      print('WebHomePage: screenSize: $screenSize');
    }
    return Scaffold(
      backgroundColor: constants.bgColor,
      appBar: buildAppBar(constants, hoverController),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: isPhone ? 20 : 70,),
            isPhone ? Column(
              children: [
                ProfilePhoto(screenSize: screenSize),
                AboutContent(screenSize: screenSize,constants: constants),
              ],
          )
          : Row(
              children: [
                Flexible(
                  flex: 2,
                  child: AboutContent(
                    screenSize: screenSize,
                    constants: constants,
                  )
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: ProfilePhoto(screenSize: screenSize)
                  )
                ),
              ],
            ),
            SocialsWidget(isPhone: isPhone, constants: constants, screenSize: screenSize),
            Container(height: isPhone? 30: 70,color: constants.bgColor2,),
            Container(
              color: constants.bgColor2,
              child: Center(
                child: Column(
                  children: [
                    Text('SERVICES',style: MyTextStyles.appBarContents.copyWith(
                      fontSize: constants.titleSize2,
                      color: constants.subheadingContentColor,
                    ),),
                    Text('WHAT I CAN DO',style: MyTextStyles.appBarContents.copyWith(
                      fontSize: constants.titleSize1,
                      color: constants.superLightContentColor,
                    ),),
                    Obx(() => Padding(
                      padding:  EdgeInsets.symmetric(horizontal: isPhone ? 0 : screenSize*0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              onHover: (value){
                                hoverController.isServicesUiCardHovered.value = value;
                                print('hovered: ${hoverController.isServicesUiCardHovered.value}');
                              },
                              onTap: (){},
                              child: ElevatedCardWidget(
                                screenSize: screenSize,
                                title: 'Ui/Ux Development',
                                description: 'I can design and develop beautiful and responsive user interfaces using Figma and Flutter.',
                                icon: FontAwesomeIcons.pen, isPhone: isPhone, constants: constants,
                                isHovered: hoverController.isServicesUiCardHovered.value,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              onHover: (value){
                                hoverController.isServicesFlutterCardHovered.value = value;
                              },
                              onTap: (){},
                              child: ElevatedCardWidget(
                                screenSize: screenSize,
                                title: 'Flutter Development',
                                description: 'I can build beautiful and responsive mobile and web apps using Flutter and Dart.',
                                icon: FontAwesomeIcons.code, isPhone: isPhone, constants: constants,
                                isHovered: hoverController.isServicesFlutterCardHovered.value,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: InkWell(
                              onHover: (value){
                                hoverController.isServicesBackendCardHovered.value = value;
                              },
                              onTap: (){},
                              child: ElevatedCardWidget(
                                screenSize: screenSize,
                                title: 'Backend Development',
                                description: 'I can build scalable and efficient backend services using Firebase, MongoDB, RESTApi and Python.',
                                icon: FontAwesomeIcons.database, isPhone: isPhone, constants: constants, isHovered: hoverController.isServicesBackendCardHovered.value,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
            Container(height: isPhone? 30: 70,color: constants.bgColor2,),

          ],
        ),
      )
    );
  }


  AppBar buildAppBar(constants, HoverController hoverController) {
    return AppBar(
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
                color: hoverController.isAboutHovered.value ? constants.mediumLightContentColor : constants.superLightContentColor,
                fontSize: constants.appBarContentsSize,
              ),
            ),
              onHover: (value){
                hoverController.isAboutHovered.value = value;
              },
            ),),
        SizedBox(width: constants.appBarContentsSpacing,),
        Obx(() =>
            TextButton(onPressed: (){}, child: Text(
              'Projects',
              style: MyTextStyles.appBarContents.copyWith(
                color: hoverController.isProjectsHovered.value ? constants.mediumLightContentColor : constants.superLightContentColor,
                fontSize: constants.appBarContentsSize,
              ),
            ),
              onHover: (value){
                hoverController.isProjectsHovered.value = value;
              },),),
        SizedBox(width: constants.appBarContentsSpacing,),
        Obx(() =>
            TextButton(onPressed: (){}, child: Text(
              'Skills',
              style: MyTextStyles.appBarContents.copyWith(
                color: hoverController.isSkillsHovered.value ? constants.mediumLightContentColor : constants.superLightContentColor,
                fontSize: constants.appBarContentsSize,
              ),
            ),
              onHover: (value){
                hoverController.isSkillsHovered.value = value;
              },
            ),),
        SizedBox(width: constants.appBarContentsSpacing,),
        Obx(() =>
            TextButton(onPressed: (){}, child: Text(
              'Services',
              style: MyTextStyles.appBarContents.copyWith(
                color: hoverController.isServicesHovered.value ? constants.mediumLightContentColor : constants.superLightContentColor,
                fontSize: constants.appBarContentsSize,
              ),
            ),
              onHover: (value){
                hoverController.isServicesHovered.value = value;
              },),),
        SizedBox(width: constants.appBarContentsSpacing,),
        Obx(() =>
            TextButton(onPressed: (){}, child: Text(
              'Contact Me',
              style: MyTextStyles.appBarContents.copyWith(
                color: hoverController.isContactHovered.value ? constants.bgColor : constants.superLightContentColor,
                fontSize: constants.appBarContentsSize,
              ),
            ),
              onHover: (value){
                hoverController.isContactHovered.value = value;
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.5)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: constants.superLightContentColor),
                  ),
                ),
              ),
            ),),
        SizedBox(width: 100,)
      ],
    );
  }
}

