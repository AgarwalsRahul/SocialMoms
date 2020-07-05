import 'package:dartz/dartz.dart';

import 'auth_failures.dart';
import 'user.dart';
import 'value_object.dart';

abstract class AuthFacade {
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    EmailAddress email,
    Password password,
  });
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword({
    EmailAddress email,
    Password password,
  });

  Future<Either<AuthFailures, Unit>> signInWithGoogle();

  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
}
