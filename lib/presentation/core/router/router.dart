import 'package:auto_route/auto_route_annotations.dart';
import 'package:social_media/presentation/around_me/around_me_page.dart';
import 'package:social_media/presentation/around_me/profile_page.dart';
import 'package:social_media/presentation/chats/conversation_page.dart';
import 'package:social_media/presentation/core/homepage.dart';
import 'package:social_media/presentation/forum/comment_screen.dart';
import 'package:social_media/presentation/forum/post_page.dart';
import 'package:social_media/presentation/info/info_page.dart';
import 'package:social_media/presentation/info/widget/info_form.dart';
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
  HomePage homePage;
  PostPage postPage;
  CommentsScreen commentsScreen;
  AroundMePage aroundMePage;
  ProfilePage profilePage;
  ConversationPage conversationPage;
  InfoForm infoForm;
}
