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
                title: 'App Development',
                description: 'I can build beautiful and responsive cross platform apps using Flutter and React Native.',
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
              title: 'Ui/Ux Development',
              description: 'I can design and develop beautiful and responsive user interfaces using Figma and Flutter.',
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
              title: 'App Development',
              description: 'I can build beautiful and responsive cross platform apps using Flutter and React Native.',
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
              title: 'Backend Development',
              description: 'I can build scalable and efficient backend services using Firebase, MongoDB, RESTApi and Python.',
              icon: FontAwesomeIcons.database, isPhone: isPhone, constants: constants, isHovered: hoverController.isServicesBackendCardHovered.value,
            ),
          ),
        ],
      ),
    ));
  }
}