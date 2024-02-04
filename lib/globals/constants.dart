import 'dart:ui';

abstract class Constants{}

class MobileConstants extends Constants{
  Color bgColor = const Color(0xff171738);
  double appBarHeight = 60;
  double appBarTitleSize = 20;
  double appBarTitleSpacing = 10;
  double appBarContentsSize = 15;
  Color appBarContentsColor = const Color(0xffddfbd2);
  Color appBarContentsHovered = const Color(0xffffffff);
  double appBarContentsSpacing = 10;
}

class WebConstants extends Constants{
  Color bgColor = const Color(0xff171738);
  double appBarHeight = 100;
  double appBarTitleSize = 30;
  double appBarTitleSpacing = 80;
  double appBarContentsSize = 20;
  Color appBarContentsColor = const Color(0xffddfbd2);
  Color appBarContentsHovered = const Color(0xffffffff);
  double appBarContentsSpacing = 30;
}