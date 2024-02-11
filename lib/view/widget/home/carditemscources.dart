import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:onlinecoursesapp/model/course_model.dart';
import 'package:onlinecoursesapp/services/api/api_service.dart';
import 'package:onlinecoursesapp/services/datasource/theme_datasource.dart';
import 'package:onlinecoursesapp/view/widget/textutilis.dart';
import '../../screen/cource_screen.dart';

class CardItemsCources extends StatelessWidget {
  const CardItemsCources({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: RestClient(Dio()).getCourses(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            final List<Course> courses = snapshot.data!;
            // print(courses);
            return Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 9,
                    maxCrossAxisExtent: 300,
                  ),
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    return buildcarditemscources(courses[index]);
                  }),
            );
          } else if (snapshot.hasError) {
            // print(snapshot.error);
            return Text(snapshot.error.toString());
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget buildcarditemscources(Course data) {
    return GestureDetector(
      onTap: () => Get.to(() => const CourseScreen()),
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
            // TextUtilies(
            //   underline: TextDecoration.underline,
            //   text: "Flutter cource online",
            //   fontSize: 12,
            //   fontWeight: FontWeight.w800,
            //   color: Colors.black,
            // ),
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              clipBehavior: Clip.hardEdge,
              child: Center(
                child: Image.network(
                  "http://192.168.0.235:3000/${data.cover_img!}",
                  width: 180, height: 180,
                  fit: BoxFit.cover,

                  // height: kCategoryCardImageSize,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextUtilies(
                  underline: TextDecoration.underline,
                  text: data.name!,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                Row(
                  children: [
                    TextUtilies(
                      underline: TextDecoration.none,
                      text: data.price!,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    const Icon(Icons.attach_money)
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Flexible(
              child: TextUtilies(
                text: data.description! +
                    "Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.",
                overflow: TextOverflow.fade,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                underline: TextDecoration.none,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextUtilies(
                      underline: TextDecoration.none,
                      text: "From: ",
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    TextUtilies(
                      underline: TextDecoration.none,
                      text: DateFormat('MMM-d').format(data.start_at!),
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    const Icon(
                      Icons.calendar_month,
                      size: 14,
                    )
                  ],
                ),
                Row(
                  children: [
                    TextUtilies(
                      underline: TextDecoration.none,
                      text: "To: ",
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    TextUtilies(
                      underline: TextDecoration.none,
                      text: DateFormat('MMM-d').format(data.end_at!),
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    const Icon(
                      Icons.calendar_month,
                      size: 14,
                    )
                  ],
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.purple,
              textColor: Colors.white,
              minWidth: double.infinity,
              child: const Text("Join now"),
            )
          ],
        ),
      ),
    );
  }
}
