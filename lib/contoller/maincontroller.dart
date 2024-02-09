



import 'package:get/get.dart';

import 'package:onlinecoursesapp/view/screen/cource_screen.dart';
import 'package:onlinecoursesapp/view/screen/favorite_screen.dart';
import 'package:onlinecoursesapp/view/screen/home_screen.dart';
import 'package:onlinecoursesapp/view/screen/profile_view.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    const HomeScreen(),
   const CourseScreen(),
    FavoritesScreen(),
   const  ProfilePage(),
  ].obs;

  var title = [
    "",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
