

import 'package:get/get.dart';
import 'package:onlinecoursesapp/services/auth_service.dart';
import 'package:onlinecoursesapp/services/box_service.dart';
import 'package:onlinecoursesapp/view/homejoinincources/controllers/resources_controller.dart';
import '../../../services/firebase/firebase_service.dart';
import 'fav_controller.dart';

class HomeController extends GetxController {
  late final FavController favController;

  final authService = Get.find<AuthService>();
  final resController = ResourcesController();
  final boxService = Get.find<BoxService>();

  @override
  void onInit() {
    resController.init();
    favController = FavController(this);
    super.onInit();
  }

  void rerender() => update();

  String get getFirstName {
    final name = authService.displayName ?? "";
    return name.split(" ")[0];
  }

  Future<List<Object>> getEventList() async {
    final firebaseService = Get.find<FirebaseService>();
    try {
      return await firebaseService.noticeEventDatasource.getEventList();
    } catch (e) {
      Get.snackbar("Error", e.toString());
      return [];
    }
  }
}
