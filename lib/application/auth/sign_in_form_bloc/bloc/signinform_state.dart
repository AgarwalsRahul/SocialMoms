part of 'signinform_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailures, Unit>> authFailuresOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailuresOrSuccessOption: none(),
      );
}
