import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/view/homejoinincources/views/pages/quizorassignment/compieted.dart';
import 'package:onlinecoursesapp/view/homejoinincources/views/pages/quizorassignment/option.dart';

class HomeQuiz extends StatefulWidget {
  const HomeQuiz({super.key});

  @override
  State<HomeQuiz> createState() => _HomeQuizState();
}

class _HomeQuizState extends State<HomeQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22, left: 6, right: 5),
        child: Column(
          children: [
            SizedBox(
              height: 421,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 240,
                    width: 399,
                    decoration: BoxDecoration(
                        color:Color(0xffA42FC1),
                        borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom:55),
                          child: Center(
                            
                            child:  Text("Quiz Lecture ${'1'}")),
                        ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 22,
                    child: Container(
                      height: 177,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color:Color(0xffA42FC1),
                              offset: Offset(0, 1),
                              spreadRadius: 3,
                              blurRadius: 5,
                            )
                          ]),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "07",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 22),
                                ),
                                Text(
                                  "08",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 22),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                "Quistion  3/10",
                                style: TextStyle(
                                    color: Color(0xffA42FC1), fontSize: 22),
                              ),
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              "What is Computers",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 22),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                      bottom: 210,
                      left: 150,
                      child: CircleAvatar(
                        radius: 42,
                        child: Text(
                          "15",
                          style:
                              TextStyle(color: Color(0xffA42FC1), fontSize: 22),
                        ),
                      ))
                ],
              ),
            ),
           
Option(option: "option A"),
 const SizedBox(
              height: 16,
            ),
Option(option: "option B"),
 const SizedBox(
              height: 16,
            ),
Option(option: "option D"),

              const SizedBox(
                              height: 13,
                            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                  primary: Color(0xffA42FC1),
                ) ,
                  onPressed: () {
                   () => Get.to(() => const Completed());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.green, fontSize: 22),
                    ),
                  ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
