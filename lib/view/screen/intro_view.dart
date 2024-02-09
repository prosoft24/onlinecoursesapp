import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlinecoursesapp/view/authview/AuthView.dart';

import '../../route/app_pages.dart';



class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isWeb = MediaQuery.of(context).size.width >= 600;

    if (isWeb) {
      return _buildWebLayout();
    } else {
      return _buildMobileLayout(context);
    }
  }

  Widget _buildWebLayout() => Scaffold(
        backgroundColor: Colors.white.withOpacity(0.1),
        body: Container(
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF3B3B98), Color(0xFF0072B5)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "app_logo",
                        child: SvgPicture.asset(
                          'assets/svg/logo.svg',
                          height: 200,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Online Courses",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Welcome",
                        style: GoogleFonts.lobster(
                          textStyle: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Hello jalal!",
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Unlock your potential with Study Mate: Your gateway to comprehensive study materials and enriching video lectures.",
                        style: GoogleFonts.aBeeZee(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.AUTH);
                          //Get.to(AuthView());

                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF2266FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildMobileLayout(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(

                    color: Color(0xFF66318d),
                     
                      borderRadius:
                          BorderRadius.only(bottomRight: 
                          Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "app_logo",
                        child: SvgPicture.asset(
                          'assets/svg/logo1.jpg',
                          height: 300,
                        ),
                      ),
                      Text(
                        "Online cources",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: Colors.white70),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 2,
              child: Container(
                color: const  Color(0xFF66318d),
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
                        const Spacer(),
                        Text(
                          "Welcome",
                          style: GoogleFonts.lobster(
                            textStyle: const TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Hello jalal !",
                          style: GoogleFonts.aBeeZee(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        //  Here we repleace sizebox with spacer
                        Row(
                          //button position
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              color: const Color.fromARGB(255, 226, 82, 82),
                              onPressed: () {
                                //home screen path
                                Get.toNamed(Routes.AUTH);
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
