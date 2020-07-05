import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/auth/auth_failures.dart';
import 'package:social_media/domain/auth/value_object.dart';

part 'signinform_event.dart';
part 'signinform_state.dart';
part 'signinform_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthFacade authFacade;

  SignInFormBloc(this.authFacade) : super(SignInFormState.initial());
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailuresOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailuresOrSuccessOption: none(),
        );
      },
      registerWithEmaiAndPasswordPressed: (e) async* {
        yield* _registerAndSignInAction(
            authFacade.registerWithEmailAndPassword);
      },
      signInWithEmaiAndPasswordPressed: (e) async* {
        yield* _registerAndSignInAction(authFacade.signInWithEmailAndPassword);
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, authFailuresOrSuccessOption: none());
        final successOrFailure = await authFacade.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            authFailuresOrSuccessOption: some(successOrFailure));
      },
    );
  }

  Stream<SignInFormState> _registerAndSignInAction(
      Future<Either<AuthFailures, Unit>> Function({
    @required EmailAddress email,
    @required Password password,
  })
          forwardedCall) async* {
    Either<AuthFailures, Unit> successOrFailure;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
          isSubmitting: true, authFailuresOrSuccessOption: none());
      successOrFailure = await forwardedCall(
        email: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailuresOrSuccessOption: optionOf(successOrFailure));
  }
}
