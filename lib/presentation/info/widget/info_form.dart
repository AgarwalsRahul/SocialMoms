import 'dart:io';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/info/info_bloc.dart';
import 'package:social_media/infrastructure/core/media_service.dart';

import 'image_selector.dart';

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  double _deviceHeight;

  File _image;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InfoBloc, InfoState>(
      listener: (context, state) {
        state.infoFailureOrSuccess.fold(
          () {},
          (either) => either.fold((failure) {
            Flushbar(
              message: failure.map(
                  unexpected: (_) => 'Unexpected Error Occured!',
                  insufficientPermission: (_) => 'Insufficient Permission',
                  unableToUpdate: (_) => 'Unable to update',
                  cancelledByUser: (_) => 'Cancelled'),
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.warning,
                size: 28.0,
                color: Colors.red[300],
              ),
              leftBarIndicatorColor: Colors.red[300],
            )..show(context);
          }, (r) => null),
        );
      },
      builder: (context, state) {
        _deviceHeight = MediaQuery.of(context).size.height;
        return Form(
          autovalidate: state.showErrorMessages,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _imageSelector(context),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                  ),
                  autocorrect: false,
                  onChanged: (value) {
                    context.bloc<InfoBloc>().add(
                          InfoEvent.nameChanged(value),
                        );
                  },
                  validator: (_) {
                    return context
                        .bloc<InfoBloc>()
                        .state
                        .info
                        .userName
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                orElse: () => null,
                                empty: (_) => 'Cannot be empty'),
                            (_) => null);
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Age',
                  ),
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    context.bloc<InfoBloc>().add(
                          InfoEvent.ageChanged(int.parse(value)),
                        );
                  },
                  validator: (_) {
                    return context.bloc<InfoBloc>().state.info.age.value.fold(
                        (f) => f.maybeMap(
                            orElse: () => null,
                            empty: (_) => 'Cannot be empty',
                            ageLimit: (_) =>
                                'Age should be greater than or equal to 18'),
                        (_) => null);
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'City',
                  ),
                  autocorrect: false,
                  onChanged: (value) {
                    context.bloc<InfoBloc>().add(
                          InfoEvent.cityChanged(value),
                        );
                  },
                  validator: (_) {
                    return context.bloc<InfoBloc>().state.info.city.value.fold(
                        (f) => f.maybeMap(
                              orElse: () => null,
                              empty: (_) => 'Cannot be empty',
                            ),
                        (_) => null);
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Short Bio',
                  ),
                  autocorrect: false,
                  onChanged: (value) {
                    context.bloc<InfoBloc>().add(
                          InfoEvent.bioChanged(value),
                        );
                  },
                  validator: (_) {
                    return context
                        .bloc<InfoBloc>()
                        .state
                        .info
                        .shortBio
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                orElse: () => null,
                                empty: (_) => 'Cannot be empty',
                                exceedingLength: (_) =>
                                    'Bio must have at most 200 characters'),
                            (_) => null);
                  },
                ),
                CheckboxListTile(
                    value: state.info.expertOrNot,
                    title: Text('Are you an Expert ?'),
                    // controlAffinity: ListTileControlAffinity.leading,
                    activeColor: Theme.of(context).accentColor,
                    checkColor: Colors.black,
                    onChanged: (value) {
                      context
                          .bloc<InfoBloc>()
                          .add(InfoEvent.expertStatusChanged(value));
                    }),
                Align(
                  child: RaisedButton(
                    onPressed: () {
                      context.bloc<InfoBloc>().add(const InfoEvent.submitted());
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                ),
                if (state.isSaving) ...[
                  SizedBox(height: _deviceHeight * 0.02),
                  const LinearProgressIndicator(
                    value: null,
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _imageSelector(BuildContext context) {
    return ImageSelector(
      borderRadius: 100,
      height: _deviceHeight * 0.20,
      width: _deviceHeight * 0.20,
      image: DecorationImage(
          image: _image == null
              ? NetworkImage(
                  'https://cdn0.iconfinder.com/data/icons/occupation-002/64/programmer-programming-occupation-avatar-512.png')
              : FileImage(
                  _image,
                ),
          fit: BoxFit.cover),
      onTap: () async {
        File _imageFile = await MediaService.instance.getProfileImage();
        if (_imageFile != null) {
          context.bloc<InfoBloc>().add(InfoEvent.imageUploaded(_imageFile));
          setState(() {
            _image = _imageFile;
          });
        }
      },
    );
  }
}
