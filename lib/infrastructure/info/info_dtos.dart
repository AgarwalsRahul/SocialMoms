import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_media/domain/core/value_objects.dart';
import 'package:social_media/domain/info/info.dart';
import 'package:social_media/domain/info/value_object.dart';
part 'info_dtos.freezed.dart';

part 'info_dtos.g.dart';

@freezed
abstract class InfoDTO implements _$InfoDTO {
  const InfoDTO._();
  const factory InfoDTO(
      {@JsonKey(ignore: true) String id,
      @required String userName,
      @required int age,
      @required String shortBio,
      @required String city,
      @required bool expertOrNot,
      @required String imageUrl}) = _InfoDTO;

  factory InfoDTO.fromJson(Map<String, dynamic> json) =>
      _$InfoDTOFromJson(json);
  factory InfoDTO.fromFirestore(DocumentSnapshot doc) {
    return InfoDTO.fromJson(doc.data).copyWith(id: doc.documentID);
  }

  factory InfoDTO.fromDomain(UserInfo info) {
    return InfoDTO(
        imageUrl: info.imageUrl,
        id: info.id.getOrCrash(),
        userName: info.userName.getOrCrash(),
        age: info.age.getOrCrash(),
        shortBio: info.shortBio.getOrCrash(),
        city: info.city.getOrCrash(),
        expertOrNot: info.expertOrNot);
  }

  UserInfo toDomain() {
    return UserInfo(
        id: UniqueId.fromUniqueString(id),
        userName: UserName(userName),
        age: Age(age),
        city: City(city),
        shortBio: ShortBio(shortBio),
        expertOrNot: expertOrNot,
        imageUrl: imageUrl);
  }
}
