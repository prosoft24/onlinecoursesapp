import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onlinecoursesapp/services/auth_service.dart';
import 'package:onlinecoursesapp/services/box_service.dart';
import 'package:onlinecoursesapp/services/sheet_service.dart';
import 'firebase_options.dart';
import 'services/firebase/firebase_service.dart';

Future<void> init() async {
 
  if (GetPlatform.isWeb || GetPlatform.isAndroid) {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }



 
  await GetStorage.init();

  await Get.put<BoxService>(BoxService()).init();

  Get.put<SheetService>(SheetService());

  
  Get.put(AuthService());

  Get.put(FirebaseService());
}
