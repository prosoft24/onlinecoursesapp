// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'course_model.g.dart';

@JsonSerializable()
class Course {
  final String? name;
  final String? description;
  final String? cover_img;
  final String? price;
  final DateTime? start_at;
  final DateTime? end_at;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  Course(this.end_at,
      {required this.name,
      required this.description,
      required this.cover_img,
      required this.price,
      required this.start_at});
}
