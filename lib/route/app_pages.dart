import 'package:get/get.dart';
import 'package:onlinecoursesapp/contoller/binding/auth_binding.dart';
import 'package:onlinecoursesapp/contoller/binding/bindings/profile_binding.dart';
import 'package:onlinecoursesapp/contoller/binding/intro_binding.dart';
import 'package:onlinecoursesapp/contoller/binding/mainbinding.dart';
import 'package:onlinecoursesapp/services/auth_service.dart';
import 'package:onlinecoursesapp/view/authview/AuthView.dart';
import 'package:onlinecoursesapp/view/event_page/bindings/event_page_binding.dart';
import 'package:onlinecoursesapp/view/event_page/views/event_page_view.dart';
import 'package:onlinecoursesapp/view/homejoinincources/bindings/home_binding.dart';
import 'package:onlinecoursesapp/view/homejoinincources/views/home_view.dart';
import 'package:onlinecoursesapp/view/screen/about_page_view.dart';
import 'package:onlinecoursesapp/view/screen/intro_view.dart';
import 'package:onlinecoursesapp/view/screen/profile_view.dart';

import '../view/screen/mainScreen.dart';


// ignore_for_file: non_constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  /// This line of code is setting the initial route of the application based on whether the user is
  /// already logged in or not. It is checking if the `appUser` property of the `BoxService` instance is
  /// null or not. If it is null, then the initial route is set to `Routes.INTRO`, which is the route for
  /// the introduction screen. If it is not null, then the initial route is set to `Routes.HOME`, which is
  /// the route for the home screen.
 static final INITIAL =
   Get.find<AuthService>().user.value == null ? Routes.INTRO : Routes.MAIN;

   // ignore: constant_identifier_names
   //static const INITIAL = Routes.INTRO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => const IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: BindingController(),
    ),

    ///////////////mainscreen
    GetPage(
      name: _Paths.MAIN,
      page: () =>  MainScreen(),
      binding: BindingController(),
    ),
    // GetPage(
    //   name: _Paths.TEST_PAGE,
    //   page: () => const TestPageView(),
    //   binding: TestPageBinding(),
    // ),
    GetPage(
      name: _Paths.NOTICE_PAGE,
      page: () => const EventPageView(),
      binding: EventPageBinding(),
    ),
    // GetPage(
    //   name: _Paths.MY_BATCH,
    //   page: () => const MyBatchView(),
    //   binding: MyBatchBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_NOTICE,
    //   page: () => const CreateNoticeView(),
    //   binding: CreateNoticeBinding(),
    // ),
    // GetPage(
    //   name: _Paths.COURSE,
    //   page: () => const CourseView(),
    //   binding: CourseBinding(),
    // ),
    // GetPage(
    //   name: _Paths.VIDEO_LECTURE,
    //   page: () => const VideoLectureView(),
      //binding: VideoLectureBinding(),
   // ),
    GetPage(
      name: _Paths.ABOUT_PAGE,
      page: () => const AboutPageView(),
      binding: BindingController(),
    ),
  ];
}
