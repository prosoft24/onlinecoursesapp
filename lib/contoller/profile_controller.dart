import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/route/app_pages.dart';
import 'package:onlinecoursesapp/services/auth_service.dart';
import 'package:onlinecoursesapp/services/box_service.dart';

class ProfileController extends GetxController {
  final boxService = Get.find<BoxService>();
  final authService = Get.find<AuthService>();

  Future<void> toggleThemeMode(ThemeMode themeMode) async =>
      await boxService.themeBox.changeThemeMode(themeMode);

  Future<void> logout() async {
    await authService.logout();
    Get.offAllNamed(Routes.INTRO);
  }

  bool isAdmin() => boxService.appUser.appUser.value?.role == 'admin';
}
