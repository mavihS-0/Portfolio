import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cross_fade/cross_fade.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:portfolio/controllers/hover_controller.dart';
import 'package:portfolio/controllers/projectsController.dart';
import 'package:portfolio/data/logos.dart';
import 'package:portfolio/data/projects.dart';
import 'package:portfolio/globals/constants.dart';
import 'package:portfolio/globals/text_styles.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/about_content.dart';
import 'package:portfolio/widgets/elevated_card_widget.dart';
import 'package:portfolio/widgets/profile_photo.dart';
import 'package:portfolio/widgets/project_builder.dart';
import 'package:portfolio/widgets/services.dart';
import 'package:portfolio/widgets/socials_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    HoverController hoverController = Get.put(HoverController());
    ProjectsController projectsController = Get.put(ProjectsController());
    PageController pageController = PageController(initialPage: 0);

    var constants;
    bool isPhone;
    GlobalKey skillsKey = GlobalKey();
    GlobalKey projectsKey = GlobalKey();
    GlobalKey servicesKey = GlobalKey();
    GlobalKey aboutKey = GlobalKey();
    GlobalKey contactKey = GlobalKey();
    
    if (screenSize < 800) {
      isPhone = true;
      constants = MobileConstants();
      print('MobileHomePage');
    } else {
      isPhone = false;
      constants = WebConstants();
      print('WebHomePage: screenSize: $screenSize');
    }

    List<Widget> skills = List.generate(16, (i2) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(logos[i2].imagePath,fit: BoxFit.cover,height: 300,),
        SizedBox(height: screenSize*0.03,),
        AutoSizeText(logos[i2].title,style: MyTextStyles.appBarContents.copyWith(
          fontSize: constants.titleSize2,
          color: constants.superLightContentColor,
        ), maxLines: 1,),
      ],
    ));

    return Scaffold(
      backgroundColor: constants.bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: constants.superLightContentColor,
        ),
        toolbarHeight: constants.appBarHeight,
        titleSpacing: constants.appBarTitleSpacing,
        backgroundColor: constants.bgColor,
        title: Text('Portfolio.',style: MyTextStyles.appBarTitle.copyWith(
          fontSize: constants.appBarTitleSize,
        ),),
        actions: isPhone? null : [
          Obx(() =>
              TextButton(onPressed: (){
                Scrollable.ensureVisible(aboutKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, child: Text(
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
              TextButton(onPressed: (){
                Scrollable.ensureVisible(servicesKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, child: Text(
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
              TextButton(onPressed: (){
                Scrollable.ensureVisible(projectsKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, child: Text(
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
              TextButton(onPressed: (){
                Scrollable.ensureVisible(skillsKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, child: Text(
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
              TextButton(onPressed: (){
                Scrollable.ensureVisible(contactKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, child: Text(
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
      ),
      endDrawer: isPhone ? Drawer(
        width: 150,
        backgroundColor: constants.superLightContentColor.withOpacity(0.3),
        child: Column(
          children: [
            SizedBox(height: 50,),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              onTap: (){
                Get.back();
              Scrollable.ensureVisible(aboutKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
            }, title: Center(
              child: Text(
                'About',
                style: MyTextStyles.appBarContents.copyWith(
                  color: constants.superLightContentColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
            ),),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              onTap: (){
                Get.back();
                Scrollable.ensureVisible(servicesKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, title: Center(
              child: Text(
                'Services',
                style: MyTextStyles.appBarContents.copyWith(
                  color: constants.superLightContentColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
            ),),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              onTap: (){
                Get.back();
                Scrollable.ensureVisible(projectsKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, title: Center(
              child: Text(
                'Projects',
                style: MyTextStyles.appBarContents.copyWith(
                  color: constants.superLightContentColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
            ),),
            ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              onTap: (){
                Get.back();
                Scrollable.ensureVisible(skillsKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, title: Center(
              child: Text(
                'Skills',
                style: MyTextStyles.appBarContents.copyWith(
                  color: constants.superLightContentColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
            ),),
ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              onTap: (){
                Get.back();
                Scrollable.ensureVisible(contactKey.currentContext!, duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
              }, title: Center(
              child: Text(
                'Contact Me',
                style: MyTextStyles.appBarContents.copyWith(
                  color: constants.superLightContentColor,
                  fontSize: constants.appBarContentsSize,
                ),
              ),
            ),),
          ],
        )
      ) : null,
      body: SingleChildScrollView(
        child: SizedBox(
          key: aboutKey,
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
                key: servicesKey,
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
                      isPhone ? ServicesMob(isPhone: isPhone, screenSize: screenSize, hoverController: hoverController, constants: constants)
                          :ServicesWeb(isPhone: isPhone, screenSize: screenSize, hoverController: hoverController, constants: constants)
                    ],
                  ),
                ),
              ),
              Container(height: isPhone? 30: 70,color: constants.bgColor2,),
              Container(height:isPhone? 30:70, color: constants.bgColor2,),
              Container(
                key: projectsKey,
                color: constants.bgColor2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: isPhone ? 20 : screenSize*0.1),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('PORTFOLIO',style: MyTextStyles.appBarContents.copyWith(
                          fontSize: constants.titleSize2,
                          color: constants.subheadingContentColor,
                        ),),
                        Row(
                          children: [
                            Expanded(
                              child: Text('RECENT PROJECTS',style: MyTextStyles.appBarContents.copyWith(
                                fontSize: constants.titleSize1_5,
                                color: constants.superLightContentColor,
                              ),),
                            ),
                            IconButton(onPressed: (){
                              pageController.previousPage(duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
                            }, icon: Icon(Icons.arrow_circle_left_outlined,color: constants.superLightContentColor,size: constants.titleSize1_5,)),
                            IconButton(onPressed: (){
                              pageController.nextPage(duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
                            }, icon: Icon(Icons.arrow_circle_right,color: constants.superLightContentColor,size: constants.titleSize1_5,))
                          ],
                        ),
                        SizedBox(height: isPhone ? 20 : 40,),
                        SizedBox(
                            height: isPhone ? 300: screenSize*0.3,
                          child: PageView.builder(
                            itemCount: projects.length,
                            controller: pageController,
                            itemBuilder: (context,index){
                              return ProjectBuilder(constants: constants, index: index , isPhone: isPhone , screenSize: screenSize);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(height: isPhone? 30: 70,color: constants.bgColor2,),
              SizedBox(height: isPhone ? 20 : 40,),
              SizedBox(
                key: skillsKey,
                width: screenSize,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: isPhone ? 20 : screenSize*0.1),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('PORTFOLIO',style: MyTextStyles.appBarContents.copyWith(
                          fontSize: constants.titleSize2,
                          color: constants.subheadingContentColor,
                        ),),
                        Text('SKILLS AND EXPERIENCE',style: MyTextStyles.appBarContents.copyWith(
                          fontSize: constants.titleSize1_5,
                          color: constants.superLightContentColor,
                        ),),
                        screenSize<1200 ? SizedBox(height: 20,) : SizedBox(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 4,
                              child: Container(
                                child: Column(
                                  children: List.generate(4, (index1) => Container(
                                      height: isPhone? 50: 100,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: List.generate(4, (index2) => Padding(
                                          padding:  EdgeInsets.all(screenSize*0.01),
                                          child: InkWell(
                                            onTap: (){},
                                            hoverColor: constants.superLightContentColor.withOpacity(0.5),
                                            child: Image.asset(logos[index1*4+index2].imagePath,fit: BoxFit.cover,),
                                            onHover: (value){
                                              hoverController.skillIndexHovered.value = index1*4+index2;
                                            },
                                          ),
                                        )),
                                      )
                                  )),
                                )
                              ),
                            ),
                            screenSize<1200 ? SizedBox() : Flexible(child: SizedBox(width: 40,)),
                            screenSize<1200? SizedBox(): Flexible(
                              flex: 4,
                              child: Obx(()=> Container(
                                  padding: EdgeInsets.all(screenSize*0.09),
                                  child: CrossFade(
                                    value: hoverController.skillIndexHovered.value,
                                    duration: Duration(milliseconds: 500),
                                    builder: (context, i) => skills[i],
                                  )
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              screenSize<1200 ? SizedBox(height: 20,) : SizedBox(),
              Container(
                key: contactKey,
                height: isPhone ? 70 : 100,
                child: Center(
                  child: Stack(
                    children: [
                      Column(
                          children: [
                            Flexible(flex: 1,child: Container(color: constants.bgColor,)),
                            Flexible(flex: 1,child: Container(color: constants.bgColor2,)),
                          ]
                      ),
                      Container(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical : isPhone ? 5 : 0,horizontal: isPhone ? 50 : 200),
                          padding: EdgeInsets.symmetric(vertical : isPhone ? 5 : 10, horizontal: isPhone ? 5 : 20),
                          height: isPhone ? 70 : 100,
                          width: screenSize,
                          decoration: BoxDecoration(
                            color: constants.superLightContentColor,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Text('Contact Me',style: MyTextStyles.appBarContents.copyWith(
                                  color: constants.bgColor,
                                  fontSize: constants.socialsHeadingSize,
                                ),),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MaterialButton(onPressed: (){},
                                        child: Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.whatsapp,color: constants.bgColor,size: isPhone? 20:30,),
                                            screenSize<1050 && !isPhone ? SizedBox() :
                                            SizedBox(width: 20,),
                                            screenSize<1050 && !isPhone ? SizedBox() :
                                            Text('8210511399',style: MyTextStyles.appBarContents.copyWith(
                                              color: constants.bgColor,
                                              fontSize: constants.socialsHeadingSize,
                                            ),),
                                          ],
                                        ),
                                      ),
                                      MaterialButton(onPressed: (){},
                                        child: Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.envelope,color: constants.bgColor,size: isPhone? 20:30,),
                                            screenSize<1050 && !isPhone ? SizedBox() :
                                            SizedBox(width: 20,),
                                            screenSize<1050 && !isPhone ? SizedBox() :
                                            AutoSizeText('shivam9753singh@gmail.com',style: MyTextStyles.appBarContents.copyWith(
                                              color: constants.bgColor,
                                              fontSize: constants.socialsHeadingSize,
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(height: isPhone? 30: 70,color: constants.bgColor2,),
            ],
          ),
        ),
      )
    );



  }



}



