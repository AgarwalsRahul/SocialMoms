import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/auth/sign_in_form_bloc/bloc/signinform_bloc.dart';
import 'package:social_media/presentation/sign_in/widgets/sign_in_form.dart';

import '../../injection.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Sign In'),
      //   centerTitle: true,
      // ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SignInForm(),
        ),
      ),
    );
  }
}
