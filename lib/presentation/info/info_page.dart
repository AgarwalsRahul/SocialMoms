import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/info/info_bloc.dart';
import 'package:social_media/injection.dart';
import 'package:social_media/presentation/info/widget/info_form.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<InfoBloc>(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InfoForm(),
        ),
      ),
    );
  }
}
