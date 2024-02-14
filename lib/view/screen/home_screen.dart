import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinecoursesapp/view/notification.dart';
import 'package:onlinecoursesapp/view/widget/home/carditemscources.dart';

import 'package:onlinecoursesapp/view/widget/home/search_textformfield.dart';
import 'package:onlinecoursesapp/view/widget/textutilis.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        padding: const EdgeInsets.all(11),
        width: double.infinity,
        height: 220,
        decoration: const BoxDecoration(
          color: Color(0xFF66318d),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      () => Get.to(() =>  NotificationView ());
                    },
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.blueAccent,
                      size: 44,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextUtilies(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          text: "Find Your",
                          color: Colors.white,
                          underline: TextDecoration.none,
                        ),
                        TextUtilies(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          text: "Cources",
                          color: Colors.white,
                          underline: TextDecoration.none,
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22, right: 16),
                          child: SearchFormText(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        // IconButton(onPressed: (){}, icon:const Icon(Icons.notification_add_outlined))
      ),
      // const SizedBox(
      //   height: 10,
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 20),
      //   child: Align(
      //     alignment: Alignment.topLeft,
      //     child: TextUtilies(
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //       text: "Cources",
      //       color: Get.isDarkMode ? Colors.white : Colors.black,
      //       underline: TextDecoration.none,
      //     ),
      //   ),
      // )

      Expanded(
          flex: 2,
          child: Container(
              color: const Color(0xFF66318d),
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.topLeft,
                          child: TextUtilies(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            text: "Cources",
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            underline: TextDecoration.none,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CardItemsCources(),
                      ],
                    ),
                  ))))
    ]));
  }
}
