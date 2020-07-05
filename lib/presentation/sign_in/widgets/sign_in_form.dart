import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/auth/auth_bloc/auth_bloc.dart';
import 'package:social_media/application/auth/sign_in_form_bloc/bloc/signinform_bloc.dart';
import 'package:social_media/presentation/core/router/router.gr.dart';

class SignInForm extends StatelessWidget {
  double _deviceHeight;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailuresOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            return Flushbar(
              message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email Already in Use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid Email and Password combination'),
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.warning,
                size: 28.0,
                color: Colors.red[300],
              ),
              leftBarIndicatorColor: Colors.red[300],
            )..show(context);
          },
              (_) => ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.infoPage)),
        );
      },
      builder: (context, state) {
        _deviceHeight = MediaQuery.of(context).size.height;
        return Form(
          autovalidate: state.showErrorMessages,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  child: Image(
                    image: const AssetImage('assets/images/notepad.png'),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    height: _deviceHeight * 0.3,
                  ),
                ),
                SizedBox(height: _deviceHeight * 0.03),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email), labelText: 'Email'),
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    context.bloc<SignInFormBloc>().add(
                          SignInFormEvent.emailChanged(value),
                        );
                  },
                  validator: (_) {
                    return context
                        .bloc<SignInFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                orElse: () => null,
                                invalidEmail: (_) => 'Invalid Email'),
                            (_) => null);
                  },
                ),
                SizedBox(height: _deviceHeight * 0.02),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) {
                    context.bloc<SignInFormBloc>().add(
                          SignInFormEvent.passwordChanged(value),
                        );
                  },
                  validator: (_) {
                    return context
                        .bloc<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                orElse: () => null,
                                shortPassword: (_) => 'Short Password'),
                            (_) => null);
                  },
                ),
                SizedBox(height: _deviceHeight * 0.02),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        child: const Text('SIGN IN'),
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmaiAndPasswordPressed());
                          context
                              .bloc<AuthBloc>()
                              .add(const AuthEvent.checkedAuthStatus());
                        },
                        colorBrightness: Brightness.dark,
                      ),
                      FlatButton(
                        child: const Text('REGISTER'),
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmaiAndPasswordPressed());
                        },
                        colorBrightness: Brightness.dark,
                      )
                    ]),
                RaisedButton(
                  onPressed: () {
                    context
                        .bloc<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed());
                    context
                        .bloc<AuthBloc>()
                        .add(const AuthEvent.checkedAuthStatus());
                  },
                  child: Text(
                    'SIGN IN WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                ),
                if (state.isSubmitting) ...[
                  SizedBox(height: _deviceHeight * 0.02),
                  const LinearProgressIndicator(
                    value: null,
                  ),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
