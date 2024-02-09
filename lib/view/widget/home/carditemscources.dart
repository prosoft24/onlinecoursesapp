import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/view/widget/textutilis.dart';
import '../../screen/cource_screen.dart';

class CardItemsCources extends StatelessWidget {
  const CardItemsCources({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 0.8,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 9,
            maxCrossAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            return buildcarditemscources();
          }),
    );
  }

  Widget buildcarditemscources() {
    return GestureDetector(
      onTap: () => Get.to(() => CourseScreen()),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtilies(
              underline: TextDecoration.underline,
              text: "Flutter cource online",
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
             ClipRRect(borderRadius:  BorderRadius.circular(22),
                  child: Image.asset(
                    'assets/images/png/ui.png',
                    // height: kCategoryCardImageSize,
                  ),
                ),
              
            
            const SizedBox(
              height: 10,
            ),
            
            TextUtilies(
              underline: TextDecoration.underline,
              text: "Name Teacher : Jalal",
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextUtilies(
                  underline: TextDecoration.underline,
                  text: "Start at: 12/2",
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                TextUtilies(
                  underline: TextDecoration.underline,
                  text: "End at: 12/2",
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextUtilies(
                  underline: TextDecoration.none,
                  text: "Price :55",
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                TextUtilies(
                  underline: TextDecoration.underline,
                  text: "join now",
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
