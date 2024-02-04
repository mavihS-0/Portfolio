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
            // Container(height: 100,color: constants.bgColor2,),
            // Container(
            //   color: constants.bgColor2,
            //   child: Center(
            //     child: Text('Projects',style: MyTextStyles.appBarContents.copyWith(
            //       fontSize: constants.titleSize1,
            //       color: constants.superLightContentColor,
            //     ),),
            //   ),
            // ),
            // Container(height: 100,color: constants.bgColor2,),
            // GetBuilder<ProjectsController>(
            //   builder: (projectsController){
            //     return Container(
            //         height: 400,
            //         color: constants.bgColor2,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           children: [
            //             IconButton(
            //               onPressed: (){
            //                 double currOffset= projectsController.scrollController.offset;
            //                 projectsController.scrollController.animateTo(currOffset - 400, duration: Duration(seconds: 1), curve: Curves.easeIn);
            //               },
            //               icon: Icon(Icons.arrow_back_ios,color: constants.superLightContentColor,size: 50,),
            //             ),
            //             Container(
            //               width: screenSize*0.8,
            //               height: 500,
            //               child: ListView.separated(
            //                 scrollDirection: Axis.horizontal,
            //                 itemCount: 5,
            //                 controller: projectsController.scrollController,
            //                 physics: AlwaysScrollableScrollPhysics(),
            //                 itemBuilder: (context,index){
            //                   return Container(
            //                     width: 400,
            //                     decoration: BoxDecoration(
            //                       border: Border.all(color: constants.superLightContentColor),
            //                       borderRadius: BorderRadius.circular(80),
            //                       image: DecorationImage(
            //                         image: AssetImage(projects[index].imagePath),
            //                         fit: BoxFit.fill,
            //                       ),
            //                     ),
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.end,
            //                       children: [
            //                         Container(
            //                           width : double.infinity,
            //                           padding: EdgeInsets.all(10),
            //                           color: constants.bgColor2.withOpacity(0.5),
            //                           child: Center(
            //                             child: Text(projects[index].title, style: MyTextStyles.appBarContents.copyWith(
            //                               fontSize: constants.titleSize2,
            //                               color: constants.superLightContentColor,
            //                             ),),
            //                           ),
            //                         ),
            //                         Expanded(child: SizedBox()),
            //                         Container(
            //                           height: 300,
            //                           color: constants.bgColor2.withOpacity(0.5),
            //                         )
            //                       ],
            //                     ),
            //                   );
            //                 },
            //                 separatorBuilder: (context,index){
            //                   return SizedBox(width: 100,);
            //                 },
            //               )
            //             ),
            //             IconButton(
            //               onPressed: (){
            //                 double currOffset= projectsController.scrollController.offset;
            //                 projectsController.scrollController.animateTo(currOffset + 400, duration: Duration(seconds: 1), curve: Curves.easeIn);
            //               },
            //               icon: Icon(Icons.arrow_forward_ios,color: constants.superLightContentColor,size: 50,),
            //             ),
            //           ],
            //         )
            //     );
            //   },
            // ),
            // Container(color: constants.bgColor2, height: 100,),

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

