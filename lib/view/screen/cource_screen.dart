import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/models/course/course.dart';
import 'package:onlinecoursesapp/view/screen/home_screen.dart';
import 'package:onlinecoursesapp/view/screen/mainScreen.dart';
import 'package:onlinecoursesapp/view/widget/coursecontainerwidget.dart';

import '../widget/customiconbuttonwidget.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IntrinsicHeight(
                child: Stack(
                  children: [
                    Align(
                      child: Text(
                        'Development',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: CustomIconButton(
                        height: 35,
                        width: 35,
                        onTap: () => Get.to(() => MainScreen()),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  separatorBuilder: (_, __) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  shrinkWrap: true,
                  itemBuilder: (_, int index) {
                    return CourseContainer();
                  },
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

