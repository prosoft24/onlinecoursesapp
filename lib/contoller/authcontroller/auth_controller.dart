import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/route/app_pages.dart';
import 'package:onlinecoursesapp/services/auth_service.dart';
import 'package:onlinecoursesapp/services/box_service.dart';

import '../../services/firebase/firebase_service.dart';
import '../../model/app_user_model.dart';
class AuthController extends GetxController {
  final auth = Get.put(AuthService());
  final firebaseService = Get.find<FirebaseService>();
  final boxService = Get.find<BoxService>();

  final key = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final loading = false.obs;

  Future<void> googleSignIn() async {
    final res = await auth.googleSignIn();
    if (res != null) {
      await _updateAppUser(res);
     Get.offAllNamed(Routes.MAIN);
    } else {
      Get.snackbar("Error", "Please try again");
    }
  }

  Future<void> _updateAppUser(User user) async {
    final isUserExist =
        await firebaseService.userDatasources.userExist(user.email!);
    if (!isUserExist) {
      await firebaseService.userDatasources
          .createUser(AppUser.fromFirebase(user));
      await boxService.appUser.updateAppUser(AppUser.fromFirebase(user));
    } else {
      final res = await firebaseService.userDatasources.getMe(user.email!);
     await boxService.appUser.updateAppUser(res);
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    return null;
  }

  Future<void> emailSignIn() async {
    if (!key.currentState!.validate()) return;

    loading.value = true;

    final res = await auth.emailSignIn(
      emailController.text,
      passwordController.text,
    );

    loading.value = false;

    if (res != null) Get.offAllNamed(Routes.MAIN);
  }

  Future<void> resetPassword(String email) async =>
      await auth.resetPassword(email);

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
