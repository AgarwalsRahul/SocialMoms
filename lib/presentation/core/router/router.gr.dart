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
import 'package:social_media/presentation/core/homepage.dart';
import 'package:social_media/presentation/forum/post_page.dart';
import 'package:social_media/presentation/forum/comment_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_media/domain/info/info.dart';
import 'package:social_media/presentation/around_me/around_me_page.dart';
import 'dart:async';
import 'package:social_media/presentation/around_me/profile_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const infoPage = '/info-page';
  static const homePage = '/home-page';
  static const postPage = '/post-page';
  static const commentsScreen = '/comments-screen';
  static const aroundMePage = '/around-me-page';
  static const profilePage = '/profile-page';
  static const all = {
    splashPage,
    signInPage,
    infoPage,
    homePage,
    postPage,
    commentsScreen,
    aroundMePage,
    profilePage,
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
    final args = settings.arguments;
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
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      case Routes.postPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => PostPage(),
          settings: settings,
        );
      case Routes.commentsScreen:
        if (hasInvalidArgs<CommentsScreenArguments>(args)) {
          return misTypedArgsRoute<CommentsScreenArguments>(args);
        }
        final typedArgs =
            args as CommentsScreenArguments ?? CommentsScreenArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => CommentsScreen(
              documentReference: typedArgs.documentReference,
              user: typedArgs.user),
          settings: settings,
        );
      case Routes.aroundMePage:
        if (hasInvalidArgs<AroundMePageArguments>(args)) {
          return misTypedArgsRoute<AroundMePageArguments>(args);
        }
        final typedArgs =
            args as AroundMePageArguments ?? AroundMePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => AroundMePage(
              key: typedArgs.key,
              future: typedArgs.future,
              appBar: typedArgs.appBar),
          settings: settings,
        );
      case Routes.profilePage:
        if (hasInvalidArgs<ProfilePageArguments>(args)) {
          return misTypedArgsRoute<ProfilePageArguments>(args);
        }
        final typedArgs =
            args as ProfilePageArguments ?? ProfilePageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              ProfilePage(key: typedArgs.key, userInfo: typedArgs.userInfo),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//CommentsScreen arguments holder class
class CommentsScreenArguments {
  final DocumentReference documentReference;
  final UserInfo user;
  CommentsScreenArguments({this.documentReference, this.user});
}

//AroundMePage arguments holder class
class AroundMePageArguments {
  final Key key;
  final Future<List<UserInfo>> future;
  final bool appBar;
  AroundMePageArguments({this.key, this.future, this.appBar});
}

//ProfilePage arguments holder class
class ProfilePageArguments {
  final Key key;
  final UserInfo userInfo;
  ProfilePageArguments({this.key, this.userInfo});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushInfoPage() => pushNamed(Routes.infoPage);

  Future pushHomePage() => pushNamed(Routes.homePage);

  Future pushPostPage() => pushNamed(Routes.postPage);

  Future pushCommentsScreen({
    DocumentReference documentReference,
    UserInfo user,
  }) =>
      pushNamed(
        Routes.commentsScreen,
        arguments: CommentsScreenArguments(
            documentReference: documentReference, user: user),
      );

  Future pushAroundMePage({
    Key key,
    Future<List<UserInfo>> future,
    bool appBar,
  }) =>
      pushNamed(
        Routes.aroundMePage,
        arguments:
            AroundMePageArguments(key: key, future: future, appBar: appBar),
      );

  Future pushProfilePage({
    Key key,
    UserInfo userInfo,
  }) =>
      pushNamed(
        Routes.profilePage,
        arguments: ProfilePageArguments(key: key, userInfo: userInfo),
      );
}
