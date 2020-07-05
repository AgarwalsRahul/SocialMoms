// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  CheckedAuthStatus checkedAuthStatus() {
    return const CheckedAuthStatus();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkedAuthStatus(),
    @required Result signedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkedAuthStatus(),
    Result signedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkedAuthStatus(CheckedAuthStatus value),
    @required Result signedOut(SignedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkedAuthStatus(CheckedAuthStatus value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $CheckedAuthStatusCopyWith<$Res> {
  factory $CheckedAuthStatusCopyWith(
          CheckedAuthStatus value, $Res Function(CheckedAuthStatus) then) =
      _$CheckedAuthStatusCopyWithImpl<$Res>;
}

class _$CheckedAuthStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CheckedAuthStatusCopyWith<$Res> {
  _$CheckedAuthStatusCopyWithImpl(
      CheckedAuthStatus _value, $Res Function(CheckedAuthStatus) _then)
      : super(_value, (v) => _then(v as CheckedAuthStatus));

  @override
  CheckedAuthStatus get _value => super._value as CheckedAuthStatus;
}

class _$CheckedAuthStatus implements CheckedAuthStatus {
  const _$CheckedAuthStatus();

  @override
  String toString() {
    return 'AuthEvent.checkedAuthStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckedAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkedAuthStatus(),
    @required Result signedOut(),
  }) {
    assert(checkedAuthStatus != null);
    assert(signedOut != null);
    return checkedAuthStatus();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkedAuthStatus(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkedAuthStatus != null) {
      return checkedAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkedAuthStatus(CheckedAuthStatus value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(checkedAuthStatus != null);
    assert(signedOut != null);
    return checkedAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkedAuthStatus(CheckedAuthStatus value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkedAuthStatus != null) {
      return checkedAuthStatus(this);
    }
    return orElse();
  }
}

abstract class CheckedAuthStatus implements AuthEvent {
  const factory CheckedAuthStatus() = _$CheckedAuthStatus;
}

abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkedAuthStatus(),
    @required Result signedOut(),
  }) {
    assert(checkedAuthStatus != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkedAuthStatus(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkedAuthStatus(CheckedAuthStatus value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(checkedAuthStatus != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkedAuthStatus(CheckedAuthStatus value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Authenticated authenticated() {
    return const Authenticated();
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
