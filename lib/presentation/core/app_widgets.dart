import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/auth/auth_bloc/auth_bloc.dart';
import 'package:social_media/application/info/info_bloc.dart';
import 'package:social_media/presentation/core/router/router.gr.dart';

import '../../injection.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.checkedAuthStatus(),
            ),
        ),
        BlocProvider(create: (context) => getIt<InfoBloc>()),
      ],
      child: MaterialApp(
        title: 'Social Media',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.amber.shade600,
          accentColor: Colors.amberAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: ExtendedNavigator(
          router: Router(),
        ),
      ),
    );
  }
}
