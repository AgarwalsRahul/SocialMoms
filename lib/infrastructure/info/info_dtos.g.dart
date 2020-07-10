// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfoDTO _$_$_InfoDTOFromJson(Map<String, dynamic> json) {
  return _$_InfoDTO(
    userName: json['userName'] as String,
    userID: json['userID'] as String,
    age: json['age'] as int,
    shortBio: json['shortBio'] as String,
    city: json['city'] as String,
    expertOrNot: json['expertOrNot'] as bool,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_InfoDTOToJson(_$_InfoDTO instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userID': instance.userID,
      'age': instance.age,
      'shortBio': instance.shortBio,
      'city': instance.city,
      'expertOrNot': instance.expertOrNot,
      'imageUrl': instance.imageUrl,
    };
