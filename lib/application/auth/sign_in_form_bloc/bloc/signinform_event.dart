part of 'signinform_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.registerWithEmaiAndPasswordPressed() =
      RegisterWithEmaiAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmaiAndPasswordPressed() =
      SignInWithEmaiAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
