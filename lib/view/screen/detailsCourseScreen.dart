import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/lesson.dart';
import 'package:onlinecoursesapp/view/homejoinincources/controllers/home_controller.dart';
import 'package:onlinecoursesapp/view/homejoinincources/views/home_view.dart';
import 'package:onlinecoursesapp/view/screen/favorite_screen.dart';
import 'package:onlinecoursesapp/view/widget/home/custom_video_player.dart';
import 'package:onlinecoursesapp/view/widget/home/lesson_card.dart';

import '../widget/customiconbuttonwidget.dart';

class DetailsScreen extends StatefulWidget {
  final String title;
  const DetailsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
 HomeController controller= Get.put(HomeController());
  int _selectedTag = 0;

  void changeTab(int index) {
    setState(() {
      _selectedTag = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
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
                          "Flutter",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          child: const Icon(Icons.arrow_back),
                          height: 35,
                          width: 35,
                          onTap: () => Get.back(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomVideoPlayer(),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Futter Novice to Ninja",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  "Number of students",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Image.asset(
                     'assets/images/png/ui.png',
                      height: 20,
                    ),
                    const Text(
                      " 4.8",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.timer,
                      color: Colors.grey,
                    ),
                    const Text(
                      " 72 Hours",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      " \$40",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTabView(
                  index: _selectedTag,
                  changeTab: changeTab,
                ),
                _selectedTag == 0 ? const PlayList() : const Description(),
              ],
            ),
          ),
        ),
        bottomSheet: BottomSheet(
          onClosing: () {},
          backgroundColor: Colors.white,
          enableDrag: false,
          builder: (context) {
            return const SizedBox(
              height: 80,
              child: EnrollBottomSheet(),
            );
          },
        ),
      
    );
  }
}

class PlayList extends StatelessWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (_, __) {
          return const SizedBox(
            height: 20,
          );
        },
        padding: const EdgeInsets.only(top: 20, bottom: 40),
        shrinkWrap: true,
        itemCount: lessonList.length,
        itemBuilder: (_, index) {
          return LessonCard(lesson: lessonList[index]);
        },
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Text(
          "Build Flutter iOS and Android Apps with a Single Codebase: Learn Google's Flutter Mobile Development Framework & Dart"),
    );
  }
}

class CustomTabView extends StatefulWidget {
  final Function(int) changeTab;
  final int index;
  const CustomTabView({Key? key, required this.changeTab, required this.index})
      : super(key: key);

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView> {
  final List<String> _tags = ["Playlist (22)", "Description"];

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        widget.changeTab(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .08, vertical: 15),
        decoration: BoxDecoration(
          color: widget.index == index ? Colors.blue : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: widget.index != index ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      child: Row(
        children: _tags
            .asMap()
            .entries
            .map((MapEntry map) => _buildTags(map.key))
            .toList(),
      ),
    );
  }
}

class EnrollBottomSheet extends StatefulWidget {
  const EnrollBottomSheet({Key? key}) : super(key: key);

  @override
  _EnrollBottomSheetState createState() => _EnrollBottomSheetState();
}

class _EnrollBottomSheetState extends State<EnrollBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Row(
        children: [
          CustomIconButton(
            onTap: () {
              Get.to(FavoritesScreen());
            },
            height: 45,
            width: 45,
            child: const Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: CustomIconButton(
              onTap: () {

                Get.to(()=> const HomeView());
              },
             color:  Color(0xFF66318d),
              height: 45,
              width: 45,
              child: const Text(
                "Enroll Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}