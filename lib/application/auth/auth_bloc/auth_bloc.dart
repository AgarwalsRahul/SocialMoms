import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkedAuthStatus: (e) async* {
        // print('event');
        final user = await _authFacade.getSignedInUser();
        // print(user);
        yield user.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.authenticated();
      },
    );
  }
}
