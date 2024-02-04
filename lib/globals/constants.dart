import 'dart:ui';

class Constants{}

class MobileConstants extends Constants{
  Color bgColor = const Color(0xff190019);
  double appBarHeight = 60;
  double appBarTitleSize = 20;
  double appBarTitleSpacing = 10;
  double appBarContentsSize = 15;
  Color superLightContentColor = const Color(0xfffbe4d8);
  Color lightContentColor = const Color(0xffdfb6b2);
  Color mediumLightContentColor = const Color(0xff854f6c);
  double appBarContentsSpacing = 10;
  double contentSpacing = 20;
  double titleSize1 = 20;
  double titleSize2 = 15;
  double titleSize3 = 10;
}

class WebConstants extends Constants{
  Color bgColor = const Color(0xff190019);
  double appBarHeight = 100;
  double appBarTitleSize = 30;
  double appBarTitleSpacing = 80;
  double appBarContentsSize = 20;
  Color superLightContentColor = const Color(0xfffbe4d8);
  Color lightContentColor = const Color(0xffdfb6b2);
  Color mediumLightContentColor = const Color(0xff854f6c);
  double appBarContentsSpacing = 30;
  double contentSpacing = 50;
  double titleSize1 = 100;
  double titleSize2 = 30;
  double titleSize3 = 20;
}