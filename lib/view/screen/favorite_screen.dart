import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesScreen extends StatelessWidget {
   FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      body:
           Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(19),
            child: Image.asset(
            //  E:\jalal work\olinecourses\onlinecoursesapp\assets\icons\png\heart.png
             // 'assets/images/png/heart.png',
             'assets/images/png/ui.png',
              fit: BoxFit.cover,scale: 2,
            ),
          ),
          Text(
                'Please Add your Favorites cources',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Get.isDarkMode ? Colors.white : Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
        ],
      ));
        
        
  }
}
