import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../globals/text_styles.dart';

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({
    super.key,
    required this.isPhone,
    required this.constants,
    required this.screenSize,
  });

  final bool isPhone;
  final constants;
  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isPhone ? 70 : 200,
      child: Stack(
        children: [
          Column(
              children: [
                Flexible(flex: 1,child: Container(color: constants.bgColor,)),
                Flexible(flex: 1,child: Container(color: constants.bgColor2,)),
              ]
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical : isPhone ? 10 : 30,horizontal: isPhone ? 50 : 200),
            padding: EdgeInsets.all(isPhone ? 5 : 20),
            height: isPhone ? 70 : 200,
            width: screenSize,
            decoration: BoxDecoration(
              color: constants.superLightContentColor,
              borderRadius: BorderRadius.circular(200),
            ),
            child: Center(
              child: Column(
                children: [
                  Text('Check out my',style: MyTextStyles.appBarContents.copyWith(
                    color: constants.bgColor,
                    fontSize: constants.socialsHeadingSize,
                  ),),
                  SizedBox(height: isPhone ? 0: 10,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: FaIcon(FontAwesomeIcons.instagram,color: constants.bgColor,size: isPhone? 10:30,),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: FaIcon(FontAwesomeIcons.linkedin,color: constants.bgColor,size: isPhone? 10:30,),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: FaIcon(FontAwesomeIcons.twitter,color: constants.bgColor,size: isPhone? 10:30,),
                        ),
                        VerticalDivider(color: constants.bgColor,thickness: 2,width: 2,),
                        IconButton(
                          onPressed: (){},
                          icon: FaIcon(FontAwesomeIcons.github,color: constants.bgColor,size: isPhone? 10:30,),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: FaIcon(FontAwesomeIcons.hackerrank,color: constants.bgColor,size: isPhone? 10:30,),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: FaIcon(FontAwesomeIcons.hackerrank,color: constants.bgColor,size: isPhone? 10:30,),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}