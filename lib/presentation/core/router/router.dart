import 'package:auto_route/auto_route_annotations.dart';
import 'package:social_media/presentation/info/info_page.dart';
import 'package:social_media/presentation/sign_in/sign_in_page.dart';
import 'package:social_media/presentation/sign_in/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
)
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  InfoPage infoPage;
}
