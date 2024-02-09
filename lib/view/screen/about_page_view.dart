// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinecoursesapp/contoller/authcontroller/about_page_controller.dart';
import 'package:url_launcher/url_launcher.dart';



class AboutPageView extends GetView<AboutPageController> {
  const AboutPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Team Members',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 700),
            child: ListView(
              padding: const EdgeInsets.all(7.0),
              children: [
                buildPersonCard(
                  name: 'Jalal soft',
                  imageNetwork: 'https://i.imgur.com/2lnDRzns.jpg',
                  instagramLink: 'https://instagram.com/',
                  githubLink: 'https://github.com/',
                  linkedinLink: 'https://www.linkedin.com',
                  contactText: 'Mobile-773748997',
                ),
                const SizedBox(height: 16.0),
              
              ],
            ),
          ),
        ),
      );

  Widget buildPersonCard({
    required String name,
    required String imageNetwork,
    required String instagramLink,
    required String githubLink,
    required String linkedinLink,
    required String contactText,
  }) =>
      Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(imageNetwork),
              ),
              const SizedBox(height: 16.0),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildLinkButton('Instagram', instagramLink),
                  const SizedBox(width: 8.0),
                  buildLinkButton('GitHub', githubLink),
                  const SizedBox(width: 8.0),
                  buildLinkButton('LinkedIn', linkedinLink),
                ],
              ),
              const SizedBox(height: 16.0),
              Text(contactText),
            ],
          ),
        ),
      );

  Widget buildLinkButton(String text, String link) => ElevatedButton(
        onPressed: () {
          _launchURL(link);
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: const TextStyle(color: Colors.white),
        ),
        child: Text(text),
      );

  void _launchURL(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }
}
