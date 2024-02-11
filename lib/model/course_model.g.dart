// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      json['end_at'] == null ? null : DateTime.parse(json['end_at'] as String),
      name: json['name'] as String?,
      description: json['description'] as String?,
      cover_img: json['cover_img'] as String?,
      price: json['price'] as String?,
      start_at: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'cover_img': instance.cover_img,
      'price': instance.price,
      'start_at': instance.start_at?.toIso8601String(),
      'end_at': instance.end_at?.toIso8601String(),
    };
