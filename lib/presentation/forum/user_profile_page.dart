import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc/auth_bloc.dart';
import '../../domain/info/info.dart';
import '../core/router/router.gr.dart';
import 'widget/user_profile_form.dart';

class UserProfilePage extends StatelessWidget {
  final UserInfo userInfo;
  const UserProfilePage({
    Key key,
    this.userInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'SIGN OUT',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              context.bloc<AuthBloc>().listen((_) {});
              ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.signInPage);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: UserProfileForm(),
      ),
    );
  }
}
