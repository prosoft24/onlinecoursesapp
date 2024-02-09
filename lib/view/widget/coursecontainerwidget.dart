
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/view/screen/cource_screen.dart';
import 'package:onlinecoursesapp/view/screen/detailsCourseScreen.dart';

class CourseContainer extends StatelessWidget {
  //final Course course;
  // const CourseContainer({
  //   Key? key,
  //   required this.course,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>Get.to(()=>  DetailsScreen(title: "galal")),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/png/ui.png',
                height: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("course.name"),
                  Text(
                    "Author 'ourse.author'",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  LinearProgressIndicator(
                   
                    backgroundColor: Colors.black12,
                    color: Colors.amberAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}