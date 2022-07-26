import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.04;

  //Dynamic height padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 42.2;
  static double height45 = screenHeight / 17.76;

  //Dynamic width padding and margin
  static double width10 = screenWidth / 84.4;
  static double width15 = screenWidth / 56.27;
  static double widtht20 = screenWidth / 42.2;
  static double widtht30 = screenWidth / 28.13;

  //font Size
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  //Radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //Icon Size
  static double iconseSize16 = screenHeight / 52.75;
  static double iconseSize24 = screenHeight / 35.17;

  //List View Size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //Popular Food
  static double popularFoodImgSize = screenHeight / 2.41;
}
