// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'signinform_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RegisterWithEmaiAndPasswordPressed registerWithEmaiAndPasswordPressed() {
    return const RegisterWithEmaiAndPasswordPressed();
  }

  SignInWithEmaiAndPasswordPressed signInWithEmaiAndPasswordPressed() {
    return const SignInWithEmaiAndPasswordPressed();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmaiAndPasswordPressed(),
    @required Result signInWithEmaiAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmaiAndPasswordPressed(),
    Result signInWithEmaiAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmaiAndPasswordPressed(
            RegisterWithEmaiAndPasswordPressed value),
    @required
        Result signInWithEmaiAndPasswordPressed(
            SignInWithEmaiAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmaiAndPasswordPressed(
        RegisterWithEmaiAndPasswordPressed value),
    Result signInWithEmaiAndPasswordPressed(
        SignInWithEmaiAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmaiAndPasswordPressed(),
    @required Result signInWithEmaiAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmaiAndPasswordPressed(),
    Result signInWithEmaiAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmaiAndPasswordPressed(
            RegisterWithEmaiAndPasswordPressed value),
    @required
        Result signInWithEmaiAndPasswordPressed(
            SignInWithEmaiAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmaiAndPasswordPressed(
        RegisterWithEmaiAndPasswordPressed value),
    Result signInWithEmaiAndPasswordPressed(
        SignInWithEmaiAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmaiAndPasswordPressed(),
    @required Result signInWithEmaiAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmaiAndPasswordPressed(),
    Result signInWithEmaiAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmaiAndPasswordPressed(
            RegisterWithEmaiAndPasswordPressed value),
    @required
        Result signInWithEmaiAndPasswordPressed(
            SignInWithEmaiAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmaiAndPasswordPressed(
        RegisterWithEmaiAndPasswordPressed value),
    Result signInWithEmaiAndPasswordPressed(
        SignInWithEmaiAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterWithEmaiAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmaiAndPasswordPressedCopyWith(
          RegisterWithEmaiAndPasswordPressed value,
          $Res Function(RegisterWithEmaiAndPasswordPressed) then) =
      _$RegisterWithEmaiAndPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmaiAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmaiAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmaiAndPasswordPressedCopyWithImpl(
      RegisterWithEmaiAndPasswordPressed _value,
      $Res Function(RegisterWithEmaiAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmaiAndPasswordPressed));

  @override
  RegisterWithEmaiAndPasswordPressed get _value =>
      super._value as RegisterWithEmaiAndPasswordPressed;
}

class _$RegisterWithEmaiAndPasswordPressed
    implements RegisterWithEmaiAndPasswordPressed {
  const _$RegisterWithEmaiAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmaiAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmaiAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmaiAndPasswordPressed(),
    @required Result signInWithEmaiAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithEmaiAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmaiAndPasswordPressed(),
    Result signInWithEmaiAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmaiAndPasswordPressed != null) {
      return registerWithEmaiAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmaiAndPasswordPressed(
            RegisterWithEmaiAndPasswordPressed value),
    @required
        Result signInWithEmaiAndPasswordPressed(
            SignInWithEmaiAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithEmaiAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmaiAndPasswordPressed(
        RegisterWithEmaiAndPasswordPressed value),
    Result signInWithEmaiAndPasswordPressed(
        SignInWithEmaiAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmaiAndPasswordPressed != null) {
      return registerWithEmaiAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmaiAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmaiAndPasswordPressed() =
      _$RegisterWithEmaiAndPasswordPressed;
}

abstract class $SignInWithEmaiAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmaiAndPasswordPressedCopyWith(
          SignInWithEmaiAndPasswordPressed value,
          $Res Function(SignInWithEmaiAndPasswordPressed) then) =
      _$SignInWithEmaiAndPasswordPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmaiAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmaiAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmaiAndPasswordPressedCopyWithImpl(
      SignInWithEmaiAndPasswordPressed _value,
      $Res Function(SignInWithEmaiAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmaiAndPasswordPressed));

  @override
  SignInWithEmaiAndPasswordPressed get _value =>
      super._value as SignInWithEmaiAndPasswordPressed;
}

class _$SignInWithEmaiAndPasswordPressed
    implements SignInWithEmaiAndPasswordPressed {
  const _$SignInWithEmaiAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmaiAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmaiAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmaiAndPasswordPressed(),
    @required Result signInWithEmaiAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithEmaiAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmaiAndPasswordPressed(),
    Result signInWithEmaiAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmaiAndPasswordPressed != null) {
      return signInWithEmaiAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmaiAndPasswordPressed(
            RegisterWithEmaiAndPasswordPressed value),
    @required
        Result signInWithEmaiAndPasswordPressed(
            SignInWithEmaiAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithEmaiAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmaiAndPasswordPressed(
        RegisterWithEmaiAndPasswordPressed value),
    Result signInWithEmaiAndPasswordPressed(
        SignInWithEmaiAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmaiAndPasswordPressed != null) {
      return signInWithEmaiAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmaiAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmaiAndPasswordPressed() =
      _$SignInWithEmaiAndPasswordPressed;
}

abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmaiAndPasswordPressed(),
    @required Result signInWithEmaiAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmaiAndPasswordPressed(),
    Result signInWithEmaiAndPasswordPressed(),
    Result signInWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmaiAndPasswordPressed(
            RegisterWithEmaiAndPasswordPressed value),
    @required
        Result signInWithEmaiAndPasswordPressed(
            SignInWithEmaiAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmaiAndPasswordPressed != null);
    assert(signInWithEmaiAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmaiAndPasswordPressed(
        RegisterWithEmaiAndPasswordPressed value),
    Result signInWithEmaiAndPasswordPressed(
        SignInWithEmaiAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {@required
          EmailAddress emailAddress,
      @required
          Password password,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<AuthFailures, Unit>> authFailuresOrSuccessOption}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailuresOrSuccessOption: authFailuresOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  EmailAddress get emailAddress;
  Password get password;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailures, Unit>> get authFailuresOrSuccessOption;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailures, Unit>> authFailuresOrSuccessOption});
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailuresOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailuresOrSuccessOption: authFailuresOrSuccessOption == freezed
          ? _value.authFailuresOrSuccessOption
          : authFailuresOrSuccessOption as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailures, Unit>> authFailuresOrSuccessOption});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailuresOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailuresOrSuccessOption: authFailuresOrSuccessOption == freezed
          ? _value.authFailuresOrSuccessOption
          : authFailuresOrSuccessOption as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.password,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.authFailuresOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(authFailuresOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailures, Unit>> authFailuresOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailuresOrSuccessOption: $authFailuresOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailuresOrSuccessOption,
                    authFailuresOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailuresOrSuccessOption,
                    authFailuresOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailuresOrSuccessOption);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<AuthFailures, Unit>> authFailuresOrSuccessOption}) =
      _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailures, Unit>> get authFailuresOrSuccessOption;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
