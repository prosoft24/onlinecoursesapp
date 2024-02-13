import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/view/homejoinincources/quizorassignment/homequiz.dart';


class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
                SizedBox(
          height: 521,
          width: double.infinity,
          child: Stack(children: [
            Container(
              height: 340,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffA42FC1),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: CircleAvatar(
                      radius: 85,
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: CircleAvatar(
                        radius: 71,
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  " Your Score ",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 22),
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: "100",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text: "  %",
                                          style: TextStyle(
                                              color: Color(0xffA42FC1),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))),
            ),
            Positioned(
              bottom: 60,
              left: 22,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  height: 190,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffA42FC1),
                          offset: Offset(0, 1),
                          spreadRadius: 3,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          color: Color(0xffA42FC1),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      const Text(
                                        "100 %",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 22),
                                      )
                                    ],
                                  ),
                                const  Text(
                                    "completion",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 22),
                                  )
                                ]),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color:const Color(0xffA42FC1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    const Text(
                                      "08 % ",
                                    )
                                  ],
                                ),
                                const Text(
                                  " Total Quesition  ",
                                )
                              ]),
                        ],
                      ),
                     const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          color:const Color(0xffA42FC1),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                      const Text(
                                        " 07%",
                                      )
                                    ],
                                  ),
                                  const Text(
                                    " Correct",
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 22),
                                  )
                                ]),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    const Text(
                                      " 10 %",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 175, 172, 76),
                                          fontSize: 22),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Wrong  ",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 175, 76, 101),
                                      fontSize: 22),
                                )
                              ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
          ]),
                ),
                // const SizedBox(
                //   height: 2,
                // ),
                 Container(
                  alignment: Alignment.topCenter,
          child:
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeQuiz()));
                      },
                      child:const CircleAvatar(
                        radius: 35,
                        backgroundColor: Color(0xff37AFA1),
                        child: Center(
                          child: Icon(
                            Icons.refresh,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                  const  SizedBox(height: 10,),
                   const Text("play again", style: TextStyle(
                                                    fontWeight:FontWeight.w400 , fontSize: 22),),
                  ],
                ),
             const    Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color.fromARGB(255, 55, 175, 95),
                      child: Center(
                        child: Icon(
                          Icons.visibility,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                    SizedBox(height: 1,),
                    Text("Review answer ", style: TextStyle(
                                                    fontWeight:FontWeight.w400 , fontSize: 22),),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xff37AFA1),
                      child: Center(
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Share Score", style: TextStyle(
                                                    fontWeight:FontWeight.w400 , fontSize: 22),),
                  ],
                ),
              ],
            ),
          ),
                
                //SizedBox(height: 44,),
                 Center(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xff37AFA1),
                      child: Center(
                        child: Icon(
                          Icons.grade,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("GRADE", style: TextStyle(
                                                    fontWeight:FontWeight.w400 , fontSize: 22),),
                  ],
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                       () => Get.to(() => const HomeQuiz());
                      },
                      child: const CircleAvatar(
                        radius: 35,
                        backgroundColor: Color.fromARGB(255, 55, 175, 95),
                        child: Center(
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                   const Text("Home Quiz ", style: TextStyle(
                                                    fontWeight:FontWeight.w400 , fontSize: 22),),
                  ],
                ),
             const    Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xff37AFA1),
                      child: Center(
                        child: Icon(
                          Icons.pages_sharp,
                          color: Colors.white,
                          size: 36,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Number Point", style: TextStyle(
                                                    fontWeight:FontWeight.w400 , fontSize: 22),),
                  ],
                ),
              ],
            ),
          ),
                )
              
              
              
              
              
              
              ]
              
              
              ),
        )
    
    
    );
  }
}
