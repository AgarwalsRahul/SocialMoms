// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InfoEventTearOff {
  const _$InfoEventTearOff();

  _Submitted submitted() {
    return const _Submitted();
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _AgeChanged ageChanged(int age) {
    return _AgeChanged(
      age,
    );
  }

  _BioChanged bioChanged(String bio) {
    return _BioChanged(
      bio,
    );
  }

  _CityChanged cityChanged(String city) {
    return _CityChanged(
      city,
    );
  }

  _Initialized initialized(UserInfo info) {
    return _Initialized(
      info,
    );
  }

  _ImageUploaded imageUploaded(File image) {
    return _ImageUploaded(
      image,
    );
  }

  _ExpertStatusChanged expertStatusChanged(bool status) {
    return _ExpertStatusChanged(
      status,
    );
  }
}

// ignore: unused_element
const $InfoEvent = _$InfoEventTearOff();

mixin _$InfoEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  });
}

abstract class $InfoEventCopyWith<$Res> {
  factory $InfoEventCopyWith(InfoEvent value, $Res Function(InfoEvent) then) =
      _$InfoEventCopyWithImpl<$Res>;
}

class _$InfoEventCopyWithImpl<$Res> implements $InfoEventCopyWith<$Res> {
  _$InfoEventCopyWithImpl(this._value, this._then);

  final InfoEvent _value;
  // ignore: unused_field
  final $Res Function(InfoEvent) _then;
}

abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

class __$SubmittedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

class _$_Submitted with DiagnosticableTreeMixin implements _Submitted {
  const _$_Submitted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.submitted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'InfoEvent.submitted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements InfoEvent {
  const factory _Submitted() = _$_Submitted;
}

abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$NameChangedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_NameChanged with DiagnosticableTreeMixin implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.nameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.nameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements InfoEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

abstract class _$AgeChangedCopyWith<$Res> {
  factory _$AgeChangedCopyWith(
          _AgeChanged value, $Res Function(_AgeChanged) then) =
      __$AgeChangedCopyWithImpl<$Res>;
  $Res call({int age});
}

class __$AgeChangedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$AgeChangedCopyWith<$Res> {
  __$AgeChangedCopyWithImpl(
      _AgeChanged _value, $Res Function(_AgeChanged) _then)
      : super(_value, (v) => _then(v as _AgeChanged));

  @override
  _AgeChanged get _value => super._value as _AgeChanged;

  @override
  $Res call({
    Object age = freezed,
  }) {
    return _then(_AgeChanged(
      age == freezed ? _value.age : age as int,
    ));
  }
}

class _$_AgeChanged with DiagnosticableTreeMixin implements _AgeChanged {
  const _$_AgeChanged(this.age) : assert(age != null);

  @override
  final int age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.ageChanged(age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.ageChanged'))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AgeChanged &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(age);

  @override
  _$AgeChangedCopyWith<_AgeChanged> get copyWith =>
      __$AgeChangedCopyWithImpl<_AgeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return ageChanged(age);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ageChanged != null) {
      return ageChanged(age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return ageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ageChanged != null) {
      return ageChanged(this);
    }
    return orElse();
  }
}

abstract class _AgeChanged implements InfoEvent {
  const factory _AgeChanged(int age) = _$_AgeChanged;

  int get age;
  _$AgeChangedCopyWith<_AgeChanged> get copyWith;
}

abstract class _$BioChangedCopyWith<$Res> {
  factory _$BioChangedCopyWith(
          _BioChanged value, $Res Function(_BioChanged) then) =
      __$BioChangedCopyWithImpl<$Res>;
  $Res call({String bio});
}

class __$BioChangedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$BioChangedCopyWith<$Res> {
  __$BioChangedCopyWithImpl(
      _BioChanged _value, $Res Function(_BioChanged) _then)
      : super(_value, (v) => _then(v as _BioChanged));

  @override
  _BioChanged get _value => super._value as _BioChanged;

  @override
  $Res call({
    Object bio = freezed,
  }) {
    return _then(_BioChanged(
      bio == freezed ? _value.bio : bio as String,
    ));
  }
}

class _$_BioChanged with DiagnosticableTreeMixin implements _BioChanged {
  const _$_BioChanged(this.bio) : assert(bio != null);

  @override
  final String bio;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.bioChanged(bio: $bio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.bioChanged'))
      ..add(DiagnosticsProperty('bio', bio));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BioChanged &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bio);

  @override
  _$BioChangedCopyWith<_BioChanged> get copyWith =>
      __$BioChangedCopyWithImpl<_BioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return bioChanged(bio);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(bio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return bioChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bioChanged != null) {
      return bioChanged(this);
    }
    return orElse();
  }
}

abstract class _BioChanged implements InfoEvent {
  const factory _BioChanged(String bio) = _$_BioChanged;

  String get bio;
  _$BioChangedCopyWith<_BioChanged> get copyWith;
}

abstract class _$CityChangedCopyWith<$Res> {
  factory _$CityChangedCopyWith(
          _CityChanged value, $Res Function(_CityChanged) then) =
      __$CityChangedCopyWithImpl<$Res>;
  $Res call({String city});
}

class __$CityChangedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$CityChangedCopyWith<$Res> {
  __$CityChangedCopyWithImpl(
      _CityChanged _value, $Res Function(_CityChanged) _then)
      : super(_value, (v) => _then(v as _CityChanged));

  @override
  _CityChanged get _value => super._value as _CityChanged;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_CityChanged(
      city == freezed ? _value.city : city as String,
    ));
  }
}

class _$_CityChanged with DiagnosticableTreeMixin implements _CityChanged {
  const _$_CityChanged(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.cityChanged(city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.cityChanged'))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityChanged &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  _$CityChangedCopyWith<_CityChanged> get copyWith =>
      __$CityChangedCopyWithImpl<_CityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return cityChanged(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class _CityChanged implements InfoEvent {
  const factory _CityChanged(String city) = _$_CityChanged;

  String get city;
  _$CityChangedCopyWith<_CityChanged> get copyWith;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({UserInfo info});

  $UserInfoCopyWith<$Res> get info;
}

class __$InitializedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object info = freezed,
  }) {
    return _then(_Initialized(
      info == freezed ? _value.info : info as UserInfo,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get info {
    if (_value.info == null) {
      return null;
    }
    return $UserInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.info) : assert(info != null);

  @override
  final UserInfo info;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.initialized(info: $info)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.initialized'))
      ..add(DiagnosticsProperty('info', info));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(info);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return initialized(info);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(info);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements InfoEvent {
  const factory _Initialized(UserInfo info) = _$_Initialized;

  UserInfo get info;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$ImageUploadedCopyWith<$Res> {
  factory _$ImageUploadedCopyWith(
          _ImageUploaded value, $Res Function(_ImageUploaded) then) =
      __$ImageUploadedCopyWithImpl<$Res>;
  $Res call({File image});
}

class __$ImageUploadedCopyWithImpl<$Res> extends _$InfoEventCopyWithImpl<$Res>
    implements _$ImageUploadedCopyWith<$Res> {
  __$ImageUploadedCopyWithImpl(
      _ImageUploaded _value, $Res Function(_ImageUploaded) _then)
      : super(_value, (v) => _then(v as _ImageUploaded));

  @override
  _ImageUploaded get _value => super._value as _ImageUploaded;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(_ImageUploaded(
      image == freezed ? _value.image : image as File,
    ));
  }
}

class _$_ImageUploaded with DiagnosticableTreeMixin implements _ImageUploaded {
  const _$_ImageUploaded(this.image) : assert(image != null);

  @override
  final File image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.imageUploaded(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.imageUploaded'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageUploaded &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  _$ImageUploadedCopyWith<_ImageUploaded> get copyWith =>
      __$ImageUploadedCopyWithImpl<_ImageUploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return imageUploaded(image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageUploaded != null) {
      return imageUploaded(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return imageUploaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageUploaded != null) {
      return imageUploaded(this);
    }
    return orElse();
  }
}

abstract class _ImageUploaded implements InfoEvent {
  const factory _ImageUploaded(File image) = _$_ImageUploaded;

  File get image;
  _$ImageUploadedCopyWith<_ImageUploaded> get copyWith;
}

abstract class _$ExpertStatusChangedCopyWith<$Res> {
  factory _$ExpertStatusChangedCopyWith(_ExpertStatusChanged value,
          $Res Function(_ExpertStatusChanged) then) =
      __$ExpertStatusChangedCopyWithImpl<$Res>;
  $Res call({bool status});
}

class __$ExpertStatusChangedCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res>
    implements _$ExpertStatusChangedCopyWith<$Res> {
  __$ExpertStatusChangedCopyWithImpl(
      _ExpertStatusChanged _value, $Res Function(_ExpertStatusChanged) _then)
      : super(_value, (v) => _then(v as _ExpertStatusChanged));

  @override
  _ExpertStatusChanged get _value => super._value as _ExpertStatusChanged;

  @override
  $Res call({
    Object status = freezed,
  }) {
    return _then(_ExpertStatusChanged(
      status == freezed ? _value.status : status as bool,
    ));
  }
}

class _$_ExpertStatusChanged
    with DiagnosticableTreeMixin
    implements _ExpertStatusChanged {
  const _$_ExpertStatusChanged(this.status) : assert(status != null);

  @override
  final bool status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoEvent.expertStatusChanged(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoEvent.expertStatusChanged'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExpertStatusChanged &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @override
  _$ExpertStatusChangedCopyWith<_ExpertStatusChanged> get copyWith =>
      __$ExpertStatusChangedCopyWithImpl<_ExpertStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(),
    @required Result nameChanged(String name),
    @required Result ageChanged(int age),
    @required Result bioChanged(String bio),
    @required Result cityChanged(String city),
    @required Result initialized(UserInfo info),
    @required Result imageUploaded(File image),
    @required Result expertStatusChanged(bool status),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return expertStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(),
    Result nameChanged(String name),
    Result ageChanged(int age),
    Result bioChanged(String bio),
    Result cityChanged(String city),
    Result initialized(UserInfo info),
    Result imageUploaded(File image),
    Result expertStatusChanged(bool status),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (expertStatusChanged != null) {
      return expertStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result nameChanged(_NameChanged value),
    @required Result ageChanged(_AgeChanged value),
    @required Result bioChanged(_BioChanged value),
    @required Result cityChanged(_CityChanged value),
    @required Result initialized(_Initialized value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result expertStatusChanged(_ExpertStatusChanged value),
  }) {
    assert(submitted != null);
    assert(nameChanged != null);
    assert(ageChanged != null);
    assert(bioChanged != null);
    assert(cityChanged != null);
    assert(initialized != null);
    assert(imageUploaded != null);
    assert(expertStatusChanged != null);
    return expertStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result nameChanged(_NameChanged value),
    Result ageChanged(_AgeChanged value),
    Result bioChanged(_BioChanged value),
    Result cityChanged(_CityChanged value),
    Result initialized(_Initialized value),
    Result imageUploaded(_ImageUploaded value),
    Result expertStatusChanged(_ExpertStatusChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (expertStatusChanged != null) {
      return expertStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _ExpertStatusChanged implements InfoEvent {
  const factory _ExpertStatusChanged(bool status) = _$_ExpertStatusChanged;

  bool get status;
  _$ExpertStatusChangedCopyWith<_ExpertStatusChanged> get copyWith;
}

class _$InfoStateTearOff {
  const _$InfoStateTearOff();

  _InfoState call(
      {@required UserInfo info,
      @required bool isSaving,
      @required bool isEditing,
      @required bool showErrorMessages,
      @required Option<Either<InfoFailure, Unit>> infoFailureOrSuccess,
      @required Option<InfoFailure> imageFailureOrSuccess}) {
    return _InfoState(
      info: info,
      isSaving: isSaving,
      isEditing: isEditing,
      showErrorMessages: showErrorMessages,
      infoFailureOrSuccess: infoFailureOrSuccess,
      imageFailureOrSuccess: imageFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $InfoState = _$InfoStateTearOff();

mixin _$InfoState {
  UserInfo get info;
  bool get isSaving;
  bool get isEditing;
  bool get showErrorMessages;
  Option<Either<InfoFailure, Unit>> get infoFailureOrSuccess;
  Option<InfoFailure> get imageFailureOrSuccess;

  $InfoStateCopyWith<InfoState> get copyWith;
}

abstract class $InfoStateCopyWith<$Res> {
  factory $InfoStateCopyWith(InfoState value, $Res Function(InfoState) then) =
      _$InfoStateCopyWithImpl<$Res>;
  $Res call(
      {UserInfo info,
      bool isSaving,
      bool isEditing,
      bool showErrorMessages,
      Option<Either<InfoFailure, Unit>> infoFailureOrSuccess,
      Option<InfoFailure> imageFailureOrSuccess});

  $UserInfoCopyWith<$Res> get info;
}

class _$InfoStateCopyWithImpl<$Res> implements $InfoStateCopyWith<$Res> {
  _$InfoStateCopyWithImpl(this._value, this._then);

  final InfoState _value;
  // ignore: unused_field
  final $Res Function(InfoState) _then;

  @override
  $Res call({
    Object info = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object showErrorMessages = freezed,
    Object infoFailureOrSuccess = freezed,
    Object imageFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed ? _value.info : info as UserInfo,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      infoFailureOrSuccess: infoFailureOrSuccess == freezed
          ? _value.infoFailureOrSuccess
          : infoFailureOrSuccess as Option<Either<InfoFailure, Unit>>,
      imageFailureOrSuccess: imageFailureOrSuccess == freezed
          ? _value.imageFailureOrSuccess
          : imageFailureOrSuccess as Option<InfoFailure>,
    ));
  }

  @override
  $UserInfoCopyWith<$Res> get info {
    if (_value.info == null) {
      return null;
    }
    return $UserInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

abstract class _$InfoStateCopyWith<$Res> implements $InfoStateCopyWith<$Res> {
  factory _$InfoStateCopyWith(
          _InfoState value, $Res Function(_InfoState) then) =
      __$InfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserInfo info,
      bool isSaving,
      bool isEditing,
      bool showErrorMessages,
      Option<Either<InfoFailure, Unit>> infoFailureOrSuccess,
      Option<InfoFailure> imageFailureOrSuccess});

  @override
  $UserInfoCopyWith<$Res> get info;
}

class __$InfoStateCopyWithImpl<$Res> extends _$InfoStateCopyWithImpl<$Res>
    implements _$InfoStateCopyWith<$Res> {
  __$InfoStateCopyWithImpl(_InfoState _value, $Res Function(_InfoState) _then)
      : super(_value, (v) => _then(v as _InfoState));

  @override
  _InfoState get _value => super._value as _InfoState;

  @override
  $Res call({
    Object info = freezed,
    Object isSaving = freezed,
    Object isEditing = freezed,
    Object showErrorMessages = freezed,
    Object infoFailureOrSuccess = freezed,
    Object imageFailureOrSuccess = freezed,
  }) {
    return _then(_InfoState(
      info: info == freezed ? _value.info : info as UserInfo,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      infoFailureOrSuccess: infoFailureOrSuccess == freezed
          ? _value.infoFailureOrSuccess
          : infoFailureOrSuccess as Option<Either<InfoFailure, Unit>>,
      imageFailureOrSuccess: imageFailureOrSuccess == freezed
          ? _value.imageFailureOrSuccess
          : imageFailureOrSuccess as Option<InfoFailure>,
    ));
  }
}

class _$_InfoState with DiagnosticableTreeMixin implements _InfoState {
  const _$_InfoState(
      {@required this.info,
      @required this.isSaving,
      @required this.isEditing,
      @required this.showErrorMessages,
      @required this.infoFailureOrSuccess,
      @required this.imageFailureOrSuccess})
      : assert(info != null),
        assert(isSaving != null),
        assert(isEditing != null),
        assert(showErrorMessages != null),
        assert(infoFailureOrSuccess != null),
        assert(imageFailureOrSuccess != null);

  @override
  final UserInfo info;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<InfoFailure, Unit>> infoFailureOrSuccess;
  @override
  final Option<InfoFailure> imageFailureOrSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoState(info: $info, isSaving: $isSaving, isEditing: $isEditing, showErrorMessages: $showErrorMessages, infoFailureOrSuccess: $infoFailureOrSuccess, imageFailureOrSuccess: $imageFailureOrSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoState'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('infoFailureOrSuccess', infoFailureOrSuccess))
      ..add(
          DiagnosticsProperty('imageFailureOrSuccess', imageFailureOrSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfoState &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.infoFailureOrSuccess, infoFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.infoFailureOrSuccess, infoFailureOrSuccess)) &&
            (identical(other.imageFailureOrSuccess, imageFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.imageFailureOrSuccess, imageFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(infoFailureOrSuccess) ^
      const DeepCollectionEquality().hash(imageFailureOrSuccess);

  @override
  _$InfoStateCopyWith<_InfoState> get copyWith =>
      __$InfoStateCopyWithImpl<_InfoState>(this, _$identity);
}

abstract class _InfoState implements InfoState {
  const factory _InfoState(
      {@required UserInfo info,
      @required bool isSaving,
      @required bool isEditing,
      @required bool showErrorMessages,
      @required Option<Either<InfoFailure, Unit>> infoFailureOrSuccess,
      @required Option<InfoFailure> imageFailureOrSuccess}) = _$_InfoState;

  @override
  UserInfo get info;
  @override
  bool get isSaving;
  @override
  bool get isEditing;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<InfoFailure, Unit>> get infoFailureOrSuccess;
  @override
  Option<InfoFailure> get imageFailureOrSuccess;
  @override
  _$InfoStateCopyWith<_InfoState> get copyWith;
}
