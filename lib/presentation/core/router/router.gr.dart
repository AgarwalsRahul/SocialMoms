// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:social_media/presentation/sign_in/splash/splash_page.dart';
import 'package:social_media/presentation/sign_in/sign_in_page.dart';
import 'package:social_media/presentation/info/info_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const infoPage = '/info-page';
  static const all = {
    splashPage,
    signInPage,
    infoPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.infoPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => InfoPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushInfoPage() => pushNamed(Routes.infoPage);
}
