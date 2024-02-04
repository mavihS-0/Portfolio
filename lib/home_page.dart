import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:portfolio/controllers/hover_controller.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/globals/text_styles.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    HoverController hoverController = Get.put(HoverController());

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
                  color: hoverController.isContactHovered.value ? Colors.black : constants.superLightContentColor,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: isPhone ? 20 : 70,),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding:  EdgeInsets.all(screenSize*0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start  ,
                      children: [
                        Text('Hello, I am',style: MyTextStyles.appBarContents.copyWith(
                          color: constants.lightContentColor,
                          fontSize: constants.titleSize2,
                        ),),
                        Text('Shivam',style: MyTextStyles.appBarContents.copyWith(
                          color: constants.superLightContentColor,
                          fontSize: constants.titleSize1,
                        ),),
                        Row(
                          children: [
                            AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText('Flutter',textStyle: MyTextStyles.appBarContents.copyWith(
                                  color: constants.lightContentColor,
                                  fontSize: constants.titleSize2,
                                  fontWeight: FontWeight.bold,
                                ),),
                                TyperAnimatedText('React Native',textStyle: MyTextStyles.appBarContents.copyWith(
                                  color: constants.lightContentColor,
                                  fontSize: constants.titleSize2,
                                  fontWeight: FontWeight.bold,
                                ),),
                                TyperAnimatedText('Cloud',textStyle: MyTextStyles.appBarContents.copyWith(
                                  color: constants.lightContentColor,
                                  fontSize: constants.titleSize2,
                                  fontWeight: FontWeight.bold,
                                ),),
                                TyperAnimatedText('App',textStyle: MyTextStyles.appBarContents.copyWith(
                                  color: constants.lightContentColor,
                                  fontSize: constants.titleSize2,
                                  fontWeight: FontWeight.bold,
                                ),),
                                TyperAnimatedText('Web',textStyle: MyTextStyles.appBarContents.copyWith(
                                  color: constants.lightContentColor,
                                  fontSize: constants.titleSize2,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ],
                            ),
                            Text(' Developer',style: MyTextStyles.appBarContents.copyWith(
                              color: Color(0xff945858),
                              fontSize: constants.titleSize2,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text('I am a passionate Flutter Developer with 2 years of experience. I have worked on various projects and have a good understanding of Flutter and Dart. I am also familiar with Firebase and other backend technologies. I am a quick learner and always ready to learn new technologies.',style: MyTextStyles.appBarContents.copyWith(
                          color: constants.superLightContentColor,
                          fontSize: constants.titleSize3,
                        ),),
                        SizedBox(height: screenSize*0.02,),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text('Contact Me',style: MyTextStyles.appBarContents.copyWith(
                            color: constants.bgColor,
                            fontSize: constants.titleSize3,
                          ),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(constants.superLightContentColor),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                side: BorderSide(color: constants.superLightContentColor),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(screenSize*0.03),
                      child: AnimatedGradientBorder(
                        borderSize: 5,
                        glowSize: 10,
                        gradientColors: [
                          Color(0xff522b5b),
                          Color(0xff854f6c),
                          Color(0xff854f6c),
                          Color(0xffdfb6b2)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(999)),
                        child: Image.asset('assets/profile.png'),
                      ),
                    )
                  )
                ),
        
              ],
            )
          ],
        ),
      )
    );
  }
}
