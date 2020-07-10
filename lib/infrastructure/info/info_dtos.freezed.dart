// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'info_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
InfoDTO _$InfoDTOFromJson(Map<String, dynamic> json) {
  return _InfoDTO.fromJson(json);
}

class _$InfoDTOTearOff {
  const _$InfoDTOTearOff();

  _InfoDTO call(
      {@JsonKey(ignore: true) String id,
      @required String userName,
      @required String userID,
      @required int age,
      @required String shortBio,
      @required String city,
      @required bool expertOrNot,
      @required String imageUrl}) {
    return _InfoDTO(
      id: id,
      userName: userName,
      userID: userID,
      age: age,
      shortBio: shortBio,
      city: city,
      expertOrNot: expertOrNot,
      imageUrl: imageUrl,
    );
  }
}

// ignore: unused_element
const $InfoDTO = _$InfoDTOTearOff();

mixin _$InfoDTO {
  @JsonKey(ignore: true)
  String get id;
  String get userName;
  String get userID;
  int get age;
  String get shortBio;
  String get city;
  bool get expertOrNot;
  String get imageUrl;

  Map<String, dynamic> toJson();
  $InfoDTOCopyWith<InfoDTO> get copyWith;
}

abstract class $InfoDTOCopyWith<$Res> {
  factory $InfoDTOCopyWith(InfoDTO value, $Res Function(InfoDTO) then) =
      _$InfoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userName,
      String userID,
      int age,
      String shortBio,
      String city,
      bool expertOrNot,
      String imageUrl});
}

class _$InfoDTOCopyWithImpl<$Res> implements $InfoDTOCopyWith<$Res> {
  _$InfoDTOCopyWithImpl(this._value, this._then);

  final InfoDTO _value;
  // ignore: unused_field
  final $Res Function(InfoDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userName = freezed,
    Object userID = freezed,
    Object age = freezed,
    Object shortBio = freezed,
    Object city = freezed,
    Object expertOrNot = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userID: userID == freezed ? _value.userID : userID as String,
      age: age == freezed ? _value.age : age as int,
      shortBio: shortBio == freezed ? _value.shortBio : shortBio as String,
      city: city == freezed ? _value.city : city as String,
      expertOrNot:
          expertOrNot == freezed ? _value.expertOrNot : expertOrNot as bool,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

abstract class _$InfoDTOCopyWith<$Res> implements $InfoDTOCopyWith<$Res> {
  factory _$InfoDTOCopyWith(_InfoDTO value, $Res Function(_InfoDTO) then) =
      __$InfoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userName,
      String userID,
      int age,
      String shortBio,
      String city,
      bool expertOrNot,
      String imageUrl});
}

class __$InfoDTOCopyWithImpl<$Res> extends _$InfoDTOCopyWithImpl<$Res>
    implements _$InfoDTOCopyWith<$Res> {
  __$InfoDTOCopyWithImpl(_InfoDTO _value, $Res Function(_InfoDTO) _then)
      : super(_value, (v) => _then(v as _InfoDTO));

  @override
  _InfoDTO get _value => super._value as _InfoDTO;

  @override
  $Res call({
    Object id = freezed,
    Object userName = freezed,
    Object userID = freezed,
    Object age = freezed,
    Object shortBio = freezed,
    Object city = freezed,
    Object expertOrNot = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_InfoDTO(
      id: id == freezed ? _value.id : id as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userID: userID == freezed ? _value.userID : userID as String,
      age: age == freezed ? _value.age : age as int,
      shortBio: shortBio == freezed ? _value.shortBio : shortBio as String,
      city: city == freezed ? _value.city : city as String,
      expertOrNot:
          expertOrNot == freezed ? _value.expertOrNot : expertOrNot as bool,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_InfoDTO extends _InfoDTO {
  const _$_InfoDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.userName,
      @required this.userID,
      @required this.age,
      @required this.shortBio,
      @required this.city,
      @required this.expertOrNot,
      @required this.imageUrl})
      : assert(userName != null),
        assert(userID != null),
        assert(age != null),
        assert(shortBio != null),
        assert(city != null),
        assert(expertOrNot != null),
        assert(imageUrl != null),
        super._();

  factory _$_InfoDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_InfoDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String userName;
  @override
  final String userID;
  @override
  final int age;
  @override
  final String shortBio;
  @override
  final String city;
  @override
  final bool expertOrNot;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'InfoDTO(id: $id, userName: $userName, userID: $userID, age: $age, shortBio: $shortBio, city: $city, expertOrNot: $expertOrNot, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.shortBio, shortBio) ||
                const DeepCollectionEquality()
                    .equals(other.shortBio, shortBio)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
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
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(shortBio) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(expertOrNot) ^
      const DeepCollectionEquality().hash(imageUrl);

  @override
  _$InfoDTOCopyWith<_InfoDTO> get copyWith =>
      __$InfoDTOCopyWithImpl<_InfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InfoDTOToJson(this);
  }
}

abstract class _InfoDTO extends InfoDTO {
  const _InfoDTO._() : super._();
  const factory _InfoDTO(
      {@JsonKey(ignore: true) String id,
      @required String userName,
      @required String userID,
      @required int age,
      @required String shortBio,
      @required String city,
      @required bool expertOrNot,
      @required String imageUrl}) = _$_InfoDTO;

  factory _InfoDTO.fromJson(Map<String, dynamic> json) = _$_InfoDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get userName;
  @override
  String get userID;
  @override
  int get age;
  @override
  String get shortBio;
  @override
  String get city;
  @override
  bool get expertOrNot;
  @override
  String get imageUrl;
  @override
  _$InfoDTOCopyWith<_InfoDTO> get copyWith;
}
