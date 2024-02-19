import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../data/projects.dart';
import '../globals/text_styles.dart';

class ProjectBuilder extends StatelessWidget {
  const ProjectBuilder({
    super.key,
    required this.constants, required this.index, required this.isPhone, required this.screenSize,
  });

  final int index ;
  final  constants;
  final bool isPhone;
  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: constants.bgColor,
      ),
      margin: EdgeInsets.symmetric(horizontal: isPhone ? 20 : 40.0),
      padding: EdgeInsets.all(isPhone ? 20 : screenSize*0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: screenSize*0.35,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      projects[index].title,
                      style: MyTextStyles.appBarContents.copyWith(
                        fontSize: screenSize*0.04,
                        color: constants.superLightContentColor,
                      ),
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      projects[index].subTitle,
                      maxLines: 1,
                      style: MyTextStyles.appBarContents.copyWith(
                        fontSize: constants.titleSize2,
                        color: constants.mediumDarkContentColor,
                      ),
                    ),
                    SizedBox(height: screenSize*0.01,),
                    AutoSizeText(
                      projects[index].description,
                      style: MyTextStyles.appBarContents.copyWith(
                        fontSize: constants.titleSize3,
                        color: constants.mediumLightContentColor,
                      ),
                      maxLines: 6,
                    ),
                    screenSize<1050 && !isPhone ? SizedBox():
                    SizedBox(height: 20,),
                    screenSize<1050 && !isPhone ? SizedBox():
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: constants.superLightContentColor
                      ),
                      child: InkWell(
                        onTap: (){
                          launchUrlString('https://${projects[index].githubLink}');
                        }
                        ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.github),
                            screenSize<1400? SizedBox():
                            SizedBox(width: 30,),
                            screenSize<1400? SizedBox():
                            AutoSizeText(
                              projects[index].githubLink,
                              style: MyTextStyles.appBarContents.copyWith(
                                fontSize: constants.titleSize3,
                                color: constants.mediumLightContentColor,
                              ),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    )
                  ]
              ),
            ),
          ),
          SizedBox(width: screenSize*0.07,),
          Image.asset(projects[index].imagePath,fit: BoxFit.fitHeight,width: screenSize*0.3,)
        ],
      ),
    );
  }
}

