import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/contoller/maincontroller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();
  // final cartController = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          backgroundColor: context.theme.backgroundColor,
          bottomNavigationBar: BottomNavigationBar(
           
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            items: const [
              // BottomNavigationBarItem(
              //   activeIcon: const Icon(
              //     Icons.home,
              //     // color: Get.isDarkMode ? pinkClr : mainColor,
              //   ),
              //   icon: Icon(
              //     Icons.home,
              //     color: Get.isDarkMode ? Colors.white : Colors.black,
              //   ),
              //   label: '',
              // ),
              // BottomNavigationBarItem(
              //   activeIcon: const Icon(
              //     Icons.category,
              //   ),
              //   icon: Icon(
              //     Icons.category,
              //     color: Get.isDarkMode ? Colors.white : Colors.black,
              //   ),
              //   label: '',
              // ),
              // BottomNavigationBarItem(
              //   activeIcon: const Icon(
              //     Icons.favorite,
              //   ),
              //   icon: Icon(
              //     Icons.favorite,
              //     color: Get.isDarkMode ? Colors.white : Colors.black,
              //   ),
              //   label: '',
              // ),
              // BottomNavigationBarItem(
              //   activeIcon: const Icon(
              //     Icons.settings,
              //     //color: Get.isDarkMode ? pinkClr : mainColor,
              //   ),
              //   icon: Icon(
              //     Icons.settings,
              //     color: Get.isDarkMode ? Colors.white : Colors.black,
              //   ),
              //   label: '',
              // ),

               BottomNavigationBarItem(
              activeIcon: 
                
                 Icon(Icons.home,),
                
                
              //activeIcon:
              
              
              //  Image.asset(
              //   icFeatured,
              //   height: kBottomNavigationBarItemSize,
              // ),
              icon:Icon(Icons.home_outlined),
              
              //  Image.asset(
              //   icFeaturedOutlined,
              //   height: kBottomNavigationBarItemSize,
              // ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              activeIcon:  Icon(Icons.book_online,),
              icon: 
              
               Icon(Icons.book_outlined,),
              label: "My cources",
            ),
            BottomNavigationBarItem(
              activeIcon:  Icon(Icons.video_call,),
              icon:  Icon(Icons.video_camera_back_outlined,),
              label: "Video Online",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings,),
              icon:  Icon(Icons.settings_applications_outlined,),
              label: "Settings",
            ),

            ],
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs.value,
          ),
        );
      },
    );
  }
}
