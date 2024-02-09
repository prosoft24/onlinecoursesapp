import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/contoller/binding/auth_binding.dart';
import 'package:onlinecoursesapp/route/app_pages.dart';
import 'package:onlinecoursesapp/di.dart' as di;


Future<void> main() async {
  // Ensure that all services are loaded before the application starts
  WidgetsFlutterBinding.ensureInitialized();
  // Initialization and Depedencies Injection
  await di.init();

  // Run Application
  runApp(const StudyMate());
}

class StudyMate extends StatelessWidget {
  const StudyMate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
        title: "Application",
          debugShowCheckedModeBanner: false,
        initialBinding: BindingController(),
        initialRoute: AppPages.INITIAL,
        //themeMode: Get.find<BoxService>().themeBox.getTheme,
        // darkTheme: ThemeData(
        //     primaryColor: const Color(0xff3B3B98),
        //     brightness: Brightness.dark,
        //     useMaterial3: true),
        // theme: ThemeData(
        //     primaryColor: const Color(0xff3B3B98),
        //     brightness: Brightness.light,
        //     useMaterial3: true),
        getPages: AppPages.routes,
      
      );
}}
