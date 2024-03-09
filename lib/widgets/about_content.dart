import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../globals/text_styles.dart';


class AboutContent extends StatelessWidget {
  final double screenSize;
  final constants;
  const AboutContent({super.key, required this.screenSize, required this.constants});

  @override
  Widget build(BuildContext context) {
    if (screenSize < 800) {
      print('MobileAboutContent');
    } else {
      print('WebAboutContent: screenSize: $screenSize');
    }
    return Padding(
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
                  TyperAnimatedText('ML & AI',textStyle: MyTextStyles.appBarContents.copyWith(
                    color: constants.lightContentColor,
                    fontSize: constants.titleSize2,
                    fontWeight: FontWeight.bold,
                  ),),
                  TyperAnimatedText('Web',textStyle: MyTextStyles.appBarContents.copyWith(
                    color: constants.lightContentColor,
                    fontSize: constants.titleSize2,
                    fontWeight: FontWeight.bold,
                  ),),
                  TyperAnimatedText('API',textStyle: MyTextStyles.appBarContents.copyWith(
                    color: constants.lightContentColor,
                    fontSize: constants.titleSize2,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              Text(' Developer',style: MyTextStyles.appBarContents.copyWith(
                  color: constants.mediumDarkContentColor,
                  fontSize: constants.titleSize2,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          SizedBox(height: 20,),
          Text('As a 3rd-year B.Tech. Computer Science and Engineering student, I bring versatile expertise in full-stack Flutter development, Machine Learning, AI, MERN stack, API development, and databases. Eager to tackle real-world challenges, my strong collaborative, management, and communication skills make me adept at problem-solving. Seeking a dynamic work environment to continually learn and contribute. Proficient in Flutter, React, Flask, Spring Boot (Java), Express, Firebase, MongoDB, MySQL, TensorFlow, Python, Java, C, C++, Dart, JavaScript, HTML5, CSS, Firestore, Markdown, R, MATLAB, MySQL, Figma, and Rive',style: MyTextStyles.appBarContents.copyWith(
            color: constants.superLightContentColor,
            fontSize: constants.titleSize3,
          ),),
          SizedBox(height: screenSize*0.02,),
          TextButton(
            onPressed: (){
              launchUrlString('https://drive.google.com/file/d/1ltEcLrLYslwxFwoPSlrfKUK5kmA3cSvF/view?usp=sharing');
            },
            child: Text('Download CV',style: MyTextStyles.appBarContents.copyWith(
              color: constants.bgColor,
              fontSize: constants.titleSize3,
            ),),
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 12,horizontal: 15)),
              backgroundColor: MaterialStateProperty.all<Color>(constants.superLightContentColor),
              overlayColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: constants.superLightContentColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}