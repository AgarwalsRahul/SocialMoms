import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import 'value_object.dart';

part 'info.freezed.dart';

@freezed
abstract class UserInfo implements _$UserInfo {
  const UserInfo._();
  const factory UserInfo({
    @required UniqueId id,
    @required String userID,
    @required UserName userName,
    @required Age age,
    @required City city,
    @required ShortBio shortBio,
    @required bool expertOrNot,
    @required String imageUrl,
  }) = _UserInfo;

  factory UserInfo.empty() {
    return UserInfo(
      userID: '',
      id: UniqueId(),
      userName: UserName(''),
      age: Age(0),
      city: City(''),
      shortBio: ShortBio(''),
      expertOrNot: false,
      imageUrl: '',
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return userName.failureOrUnit
        .andThen(age.failureOrUnit)
        .andThen(city.failureOrUnit)
        .andThen(shortBio.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
