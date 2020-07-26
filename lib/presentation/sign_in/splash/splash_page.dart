import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/auth/auth_bloc/auth_bloc.dart';
import 'package:social_media/presentation/core/router/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            return ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.homePage);
            // return ExtendedNavigator.of(context)
            // .pushReplacementNamed(Routes.signInPage);
          },
          unauthenticated: (_) {
            return ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage);
          },
        );
      },
      child: Scaffold(
          body: Center(
        child: CircularProgressIndicator(),
      )),
    );
  }
}
