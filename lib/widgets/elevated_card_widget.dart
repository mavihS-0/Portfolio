import 'package:flutter/material.dart';

import '../globals/text_styles.dart';

class ElevatedCardWidget extends StatelessWidget {
  final bool isHovered;
  final bool isPhone;
  final String title;
  final String description;
  final IconData icon;
  final constants;
  final double screenSize;
  const ElevatedCardWidget({super.key, required this.title, required this.description, required this.icon, required this.isPhone, required this.constants, required this.screenSize, required this.isHovered});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: isHovered ? EdgeInsets.all(isPhone ? 20 : 40.0) : EdgeInsets.all(isPhone ? 16 : 30.0),
      padding: EdgeInsets.all(screenSize*0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: isHovered ? null : [
          BoxShadow(
            color: constants.mediumLightContentColor,
            offset: Offset(5, 5),
            blurRadius: isPhone?5:25,
          ),
          BoxShadow(
            color: constants.lightContentColor,
            offset: Offset(-5, -5),
            blurRadius: isPhone? 5: 25,
          ),
        ],
      ),
      duration: Duration(milliseconds: 300),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: constants.cardIconSize,
            color: constants.subheadingContentColor,
          ),
          SizedBox(height: 16.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: MyTextStyles.appBarContents.copyWith(
              fontSize: constants.titleSize2,
              color: constants.darkContentColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
              description,
              textAlign: TextAlign.center,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: MyTextStyles.appBarContents.copyWith(
                fontSize: constants.titleSize3,
                color: constants.darkContentColor,
              )
          ),
        ],
      ),
    );
  }
}