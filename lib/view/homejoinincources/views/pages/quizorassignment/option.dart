import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Option extends StatelessWidget {
  String option;
  Option({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 43,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xffA42FC1), width: 3),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    option,
                    style: const TextStyle(color: Colors.green, fontSize: 22),
                  ),
                  Radio(value: option, groupValue: 2, onChanged: (value) {})
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
