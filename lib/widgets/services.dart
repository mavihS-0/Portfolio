import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../controllers/hover_controller.dart';
import 'elevated_card_widget.dart';

class ServicesWeb extends StatelessWidget {
  const ServicesWeb({
    super.key,
    required this.isPhone,
    required this.screenSize,
    required this.hoverController,
    required this.constants,
  });

  final bool isPhone;
  final double screenSize;
  final HoverController hoverController;
  final constants;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding:  EdgeInsets.symmetric(horizontal: isPhone ? 0 : screenSize*0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: InkWell(
              onHover: (value){
                hoverController.isServicesUiCardHovered.value = value;
              },
              onTap: (){},
              child: ElevatedCardWidget(
                screenSize: screenSize,
                title: 'App and Web Development',
                description: "Crafting seamless digital experiences with Flutter for cross-platform mobile apps and MERN stack for robust web solutions.",
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
                title: 'Machine Learning',
                description: 'I specialize in deploying advanced machine learning algorithms using Python and TensorFlow, turning raw data into actionable business insights.',
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
                title: 'API Development',
                description: 'I excel in API development using Flask, Spring Boot, and Express, ensuring seamless integration and communication between your applications.',
                icon: FontAwesomeIcons.database, isPhone: isPhone, constants: constants, isHovered: hoverController.isServicesBackendCardHovered.value,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class ServicesMob extends StatelessWidget {
  const ServicesMob({
    super.key,
    required this.isPhone,
    required this.screenSize,
    required this.hoverController,
    required this.constants,
  });

  final bool isPhone;
  final double screenSize;
  final HoverController hoverController;
  final constants;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding:  EdgeInsets.symmetric(horizontal: isPhone ? 0 : screenSize*0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onHover: (value){
              hoverController.isServicesUiCardHovered.value = value;
            },
            onTap: (){},
            child: ElevatedCardWidget(
              screenSize: screenSize,
              title: 'App and Web Development',
              description: "Crafting seamless digital experiences with Flutter for cross-platform mobile apps and MERN stack for robust web solutions.",
              icon: FontAwesomeIcons.pen, isPhone: isPhone, constants: constants,
              isHovered: hoverController.isServicesUiCardHovered.value,
            ),
          ),
          InkWell(
            onHover: (value){
              hoverController.isServicesFlutterCardHovered.value = value;
            },
            onTap: (){},
            child: ElevatedCardWidget(
              screenSize: screenSize,
              title: 'Machine Learning',
              description: 'I specialize in deploying advanced machine learning algorithms using Python and TensorFlow, turning raw data into actionable business insights.',

              icon: FontAwesomeIcons.code, isPhone: isPhone, constants: constants,
              isHovered: hoverController.isServicesFlutterCardHovered.value,
            ),
          ),
          InkWell(
            onHover: (value){
              hoverController.isServicesBackendCardHovered.value = value;
            },
            onTap: (){},
            child: ElevatedCardWidget(
              screenSize: screenSize,
              title: 'API Development',
              description: 'I excel in API development using Flask, Spring Boot, and Express, ensuring seamless integration and communication between your applications.',
              icon: FontAwesomeIcons.database, isPhone: isPhone, constants: constants, isHovered: hoverController.isServicesBackendCardHovered.value,
            ),
          ),
        ],
      ),
    ));
  }
}