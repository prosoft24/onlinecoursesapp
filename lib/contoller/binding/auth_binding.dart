import 'package:get/get.dart';
import 'package:onlinecoursesapp/contoller/authcontroller/about_page_controller.dart';
import 'package:onlinecoursesapp/contoller/maincontroller.dart';
import 'package:onlinecoursesapp/contoller/profile_controller.dart';
import 'package:onlinecoursesapp/view/homejoinincources/controllers/home_controller.dart';

import '../authcontroller/auth_controller.dart';



class BindingController extends Bindings{
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(MainController());
    Get.put(ProfileController());
 Get.lazyPut<AboutPageController>(
      () => AboutPageController(),
      
    );
    Get.put(HomeController());
  }

}
