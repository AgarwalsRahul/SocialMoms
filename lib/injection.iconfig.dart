// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:social_media/infrastructure/core/firebase_injection_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:social_media/infrastructure/info/info_repository.dart';
import 'package:social_media/domain/info/info_repo_interface.dart';
import 'package:social_media/infrastructure/auth/firebase_auth_facade.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/application/info/info_bloc.dart';
import 'package:social_media/application/auth/sign_in_form_bloc/bloc/signinform_bloc.dart';
import 'package:social_media/application/auth/auth_bloc/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectionModule = _$FirebaseInjectionModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectionModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectionModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectionModule.googleSignIn);
  g.registerLazySingleton<InfoRepoInterface>(
      () => InfoRepository(g<Firestore>()));
  g.registerLazySingleton<AuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerFactory<InfoBloc>(() => InfoBloc(g<InfoRepoInterface>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<AuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<AuthFacade>()));
}

class _$FirebaseInjectionModule extends FirebaseInjectionModule {}
