// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      json['name'] as String? ?? '',
      json['sex'] as String? ?? '',
      json['pictureUrl'] as String? ?? '',
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'name': instance.name,
      'sex': instance.sex,
      'pictureUrl': instance.pictureUrl,
    };
