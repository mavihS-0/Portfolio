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
                  TyperAnimatedText('React Native',textStyle: MyTextStyles.appBarContents.copyWith(
                    color: constants.lightContentColor,
                    fontSize: constants.titleSize2,
                    fontWeight: FontWeight.bold,
                  ),),
                  TyperAnimatedText('App',textStyle: MyTextStyles.appBarContents.copyWith(
                    color: constants.lightContentColor,
                    fontSize: constants.titleSize2,
                    fontWeight: FontWeight.bold,
                  ),),
                  TyperAnimatedText('Backend',textStyle: MyTextStyles.appBarContents.copyWith(
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
                  color: constants.mediumDarkContentColor,
                  fontSize: constants.titleSize2,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          SizedBox(height: 20,),
          Text('I am a passionate Flutter Developer with 2 years of experience. I have worked on various projects and have a good understanding of Flutter as well as general programming. I am also familiar with Firebase, MongoDB and other backend technologies. I am a quick learner and always ready to learn new technologies. Currently exploring other technologies like React Native and Swift.',style: MyTextStyles.appBarContents.copyWith(
            color: constants.superLightContentColor,
            fontSize: constants.titleSize3,
          ),),
          SizedBox(height: screenSize*0.02,),
          TextButton(
            onPressed: (){
              launchUrlString('https://drive.google.com/file/d/1wtxNpCP-O_nBu1OzMHA9vQ2GfnMaSGin/view?usp=sharing');
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