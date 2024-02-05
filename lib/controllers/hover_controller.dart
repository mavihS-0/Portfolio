import 'package:get/get.dart';

class HoverController extends GetxController{
  RxBool isAboutHovered = false.obs;
  RxBool isServicesHovered = false.obs;
  RxBool isProjectsHovered = false.obs;
  RxBool isSkillsHovered = false.obs;
  RxBool isContactHovered = false.obs;
  RxBool isServicesUiCardHovered = false.obs;
  RxBool isServicesFlutterCardHovered = false.obs;
  RxBool isServicesBackendCardHovered = false.obs;
  RxInt skillIndexHovered = 0.obs;
}