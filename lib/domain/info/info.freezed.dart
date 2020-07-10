// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserInfoTearOff {
  const _$UserInfoTearOff();

  _UserInfo call(
      {@required UniqueId id,
      @required String userID,
      @required UserName userName,
      @required Age age,
      @required City city,
      @required ShortBio shortBio,
      @required bool expertOrNot,
      @required String imageUrl}) {
    return _UserInfo(
      id: id,
      userID: userID,
      userName: userName,
      age: age,
      city: city,
      shortBio: shortBio,
      expertOrNot: expertOrNot,
      imageUrl: imageUrl,
    );
  }
}

// ignore: unused_element
const $UserInfo = _$UserInfoTearOff();

mixin _$UserInfo {
  UniqueId get id;
  String get userID;
  UserName get userName;
  Age get age;
  City get city;
  ShortBio get shortBio;
  bool get expertOrNot;
  String get imageUrl;

  $UserInfoCopyWith<UserInfo> get copyWith;
}

abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String userID,
      UserName userName,
      Age age,
      City city,
      ShortBio shortBio,
      bool expertOrNot,
      String imageUrl});
}

class _$UserInfoCopyWithImpl<$Res> implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  final UserInfo _value;
  // ignore: unused_field
  final $Res Function(UserInfo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userID = freezed,
    Object userName = freezed,
    Object age = freezed,
    Object city = freezed,
    Object shortBio = freezed,
    Object expertOrNot = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      userID: userID == freezed ? _value.userID : userID as String,
      userName: userName == freezed ? _value.userName : userName as UserName,
      age: age == freezed ? _value.age : age as Age,
      city: city == freezed ? _value.city : city as City,
      shortBio: shortBio == freezed ? _value.shortBio : shortBio as ShortBio,
      expertOrNot:
          expertOrNot == freezed ? _value.expertOrNot : expertOrNot as bool,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

abstract class _$UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$UserInfoCopyWith(_UserInfo value, $Res Function(_UserInfo) then) =
      __$UserInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String userID,
      UserName userName,
      Age age,
      City city,
      ShortBio shortBio,
      bool expertOrNot,
      String imageUrl});
}

class __$UserInfoCopyWithImpl<$Res> extends _$UserInfoCopyWithImpl<$Res>
    implements _$UserInfoCopyWith<$Res> {
  __$UserInfoCopyWithImpl(_UserInfo _value, $Res Function(_UserInfo) _then)
      : super(_value, (v) => _then(v as _UserInfo));

  @override
  _UserInfo get _value => super._value as _UserInfo;

  @override
  $Res call({
    Object id = freezed,
    Object userID = freezed,
    Object userName = freezed,
    Object age = freezed,
    Object city = freezed,
    Object shortBio = freezed,
    Object expertOrNot = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_UserInfo(
      id: id == freezed ? _value.id : id as UniqueId,
      userID: userID == freezed ? _value.userID : userID as String,
      userName: userName == freezed ? _value.userName : userName as UserName,
      age: age == freezed ? _value.age : age as Age,
      city: city == freezed ? _value.city : city as City,
      shortBio: shortBio == freezed ? _value.shortBio : shortBio as ShortBio,
      expertOrNot:
          expertOrNot == freezed ? _value.expertOrNot : expertOrNot as bool,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

class _$_UserInfo extends _UserInfo {
  const _$_UserInfo(
      {@required this.id,
      @required this.userID,
      @required this.userName,
      @required this.age,
      @required this.city,
      @required this.shortBio,
      @required this.expertOrNot,
      @required this.imageUrl})
      : assert(id != null),
        assert(userID != null),
        assert(userName != null),
        assert(age != null),
        assert(city != null),
        assert(shortBio != null),
        assert(expertOrNot != null),
        assert(imageUrl != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String userID;
  @override
  final UserName userName;
  @override
  final Age age;
  @override
  final City city;
  @override
  final ShortBio shortBio;
  @override
  final bool expertOrNot;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserInfo(id: $id, userID: $userID, userName: $userName, age: $age, city: $city, shortBio: $shortBio, expertOrNot: $expertOrNot, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.shortBio, shortBio) ||
                const DeepCollectionEquality()
                    .equals(other.shortBio, shortBio)) &&
            (identical(other.expertOrNot, expertOrNot) ||
                const DeepCollectionEquality()
                    .equals(other.expertOrNot, expertOrNot)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(shortBio) ^
      const DeepCollectionEquality().hash(expertOrNot) ^
      const DeepCollectionEquality().hash(imageUrl);

  @override
  _$UserInfoCopyWith<_UserInfo> get copyWith =>
      __$UserInfoCopyWithImpl<_UserInfo>(this, _$identity);
}

abstract class _UserInfo extends UserInfo {
  const _UserInfo._() : super._();
  const factory _UserInfo(
      {@required UniqueId id,
      @required String userID,
      @required UserName userName,
      @required Age age,
      @required City city,
      @required ShortBio shortBio,
      @required bool expertOrNot,
      @required String imageUrl}) = _$_UserInfo;

  @override
  UniqueId get id;
  @override
  String get userID;
  @override
  UserName get userName;
  @override
  Age get age;
  @override
  City get city;
  @override
  ShortBio get shortBio;
  @override
  bool get expertOrNot;
  @override
  String get imageUrl;
  @override
  _$UserInfoCopyWith<_UserInfo> get copyWith;
}
