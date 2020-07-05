// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  Empty<T> empty<T>({@required T failedVaue}) {
    return Empty<T>(
      failedVaue: failedVaue,
    );
  }

  AgeLimit<T> ageLimit<T>({@required T failedValue}) {
    return AgeLimit<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>(
      {@required T failedVaue, @required int max}) {
    return ExceedingLength<T>(
      failedVaue: failedVaue,
      max: max,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result empty(T failedVaue),
    @required Result ageLimit(T failedValue),
    @required Result exceedingLength(T failedVaue, int max),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result empty(T failedVaue),
    Result ageLimit(T failedValue),
    Result exceedingLength(T failedVaue, int max),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result empty(Empty<T> value),
    @required Result ageLimit(AgeLimit<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result empty(Empty<T> value),
    Result ageLimit(AgeLimit<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result empty(T failedVaue),
    @required Result ageLimit(T failedValue),
    @required Result exceedingLength(T failedVaue, int max),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result empty(T failedVaue),
    Result ageLimit(T failedValue),
    Result exceedingLength(T failedVaue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result empty(Empty<T> value),
    @required Result ageLimit(AgeLimit<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result empty(Empty<T> value),
    Result ageLimit(AgeLimit<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result empty(T failedVaue),
    @required Result ageLimit(T failedValue),
    @required Result exceedingLength(T failedVaue, int max),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result empty(T failedVaue),
    Result ageLimit(T failedValue),
    Result exceedingLength(T failedVaue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result empty(Empty<T> value),
    @required Result ageLimit(AgeLimit<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result empty(Empty<T> value),
    Result ageLimit(AgeLimit<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  T get failedValue;
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedVaue});
}

class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedVaue = freezed,
  }) {
    return _then(Empty<T>(
      failedVaue: failedVaue == freezed ? _value.failedVaue : failedVaue as T,
    ));
  }
}

class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedVaue}) : assert(failedVaue != null);

  @override
  final T failedVaue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedVaue: $failedVaue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedVaue, failedVaue) ||
                const DeepCollectionEquality()
                    .equals(other.failedVaue, failedVaue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedVaue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result empty(T failedVaue),
    @required Result ageLimit(T failedValue),
    @required Result exceedingLength(T failedVaue, int max),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return empty(failedVaue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result empty(T failedVaue),
    Result ageLimit(T failedValue),
    Result exceedingLength(T failedVaue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedVaue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result empty(Empty<T> value),
    @required Result ageLimit(AgeLimit<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result empty(Empty<T> value),
    Result ageLimit(AgeLimit<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedVaue}) = _$Empty<T>;

  T get failedVaue;
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

abstract class $AgeLimitCopyWith<T, $Res> {
  factory $AgeLimitCopyWith(
          AgeLimit<T> value, $Res Function(AgeLimit<T>) then) =
      _$AgeLimitCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$AgeLimitCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $AgeLimitCopyWith<T, $Res> {
  _$AgeLimitCopyWithImpl(AgeLimit<T> _value, $Res Function(AgeLimit<T>) _then)
      : super(_value, (v) => _then(v as AgeLimit<T>));

  @override
  AgeLimit<T> get _value => super._value as AgeLimit<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(AgeLimit<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$AgeLimit<T> implements AgeLimit<T> {
  const _$AgeLimit({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.ageLimit(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AgeLimit<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $AgeLimitCopyWith<T, AgeLimit<T>> get copyWith =>
      _$AgeLimitCopyWithImpl<T, AgeLimit<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result empty(T failedVaue),
    @required Result ageLimit(T failedValue),
    @required Result exceedingLength(T failedVaue, int max),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return ageLimit(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result empty(T failedVaue),
    Result ageLimit(T failedValue),
    Result exceedingLength(T failedVaue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ageLimit != null) {
      return ageLimit(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result empty(Empty<T> value),
    @required Result ageLimit(AgeLimit<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return ageLimit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result empty(Empty<T> value),
    Result ageLimit(AgeLimit<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ageLimit != null) {
      return ageLimit(this);
    }
    return orElse();
  }
}

abstract class AgeLimit<T> implements ValueFailure<T> {
  const factory AgeLimit({@required T failedValue}) = _$AgeLimit<T>;

  T get failedValue;
  $AgeLimitCopyWith<T, AgeLimit<T>> get copyWith;
}

abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedVaue, int max});
}

class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedVaue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedVaue: failedVaue == freezed ? _value.failedVaue : failedVaue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedVaue, @required this.max})
      : assert(failedVaue != null),
        assert(max != null);

  @override
  final T failedVaue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedVaue: $failedVaue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedVaue, failedVaue) ||
                const DeepCollectionEquality()
                    .equals(other.failedVaue, failedVaue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedVaue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result empty(T failedVaue),
    @required Result ageLimit(T failedValue),
    @required Result exceedingLength(T failedVaue, int max),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return exceedingLength(failedVaue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result empty(T failedVaue),
    Result ageLimit(T failedValue),
    Result exceedingLength(T failedVaue, int max),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedVaue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result empty(Empty<T> value),
    @required Result ageLimit(AgeLimit<T> value),
    @required Result exceedingLength(ExceedingLength<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(empty != null);
    assert(ageLimit != null);
    assert(exceedingLength != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result empty(Empty<T> value),
    Result ageLimit(AgeLimit<T> value),
    Result exceedingLength(ExceedingLength<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedVaue, @required int max}) =
      _$ExceedingLength<T>;

  T get failedVaue;
  int get max;
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}
