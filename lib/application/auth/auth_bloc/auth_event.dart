part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkedAuthStatus() = CheckedAuthStatus;
  const factory AuthEvent.signedOut() = SignedOut;
}
