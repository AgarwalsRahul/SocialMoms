import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/core/errors.dart';
import 'package:social_media/injection.dart';

import '../../domain/info/info.dart';
import '../../domain/info/info_failure.dart';
import '../../domain/info/info_repo_interface.dart';
import '../../domain/info/value_object.dart';

part 'info_bloc.freezed.dart';
part 'info_event.dart';
part 'info_state.dart';

@injectable
class InfoBloc extends Bloc<InfoEvent, InfoState> {
  final InfoRepoInterface _repoInterface;

  InfoBloc(this._repoInterface) : super(InfoState.initial());

  @override
  Stream<InfoState> mapEventToState(
    InfoEvent event,
  ) async* {
    yield* event.map(submitted: (e) async* {
      final currentUser = await getIt<AuthFacade>().getSignedInUser();
      final userid = currentUser
          .getOrElse(() => throw NotAuthenticatedError())
          .id
          .getOrCrash();
      Either<InfoFailure, Unit> failureOrSuccess;
      yield state.copyWith(
        isSaving: true,
        infoFailureOrSuccess: none(),
      );
      if (state.info.failureOption.isNone() &&
          state.imageFailureOrSuccess.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _repoInterface.update(state.info.copyWith(userID: userid))
            : await _repoInterface.create(state.info.copyWith(userID: userid));
      }
      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        infoFailureOrSuccess: optionOf(failureOrSuccess),
      );
    }, nameChanged: (e) async* {
      yield state.copyWith(
        info: state.info.copyWith(
          userName: UserName(e.name),
        ),
        infoFailureOrSuccess: none(),
      );
    }, ageChanged: (e) async* {
      yield state.copyWith(
        info: state.info.copyWith(
          age: Age(e.age),
        ),
        infoFailureOrSuccess: none(),
      );
    }, bioChanged: (e) async* {
      yield state.copyWith(
        info: state.info.copyWith(
          shortBio: ShortBio(e.bio),
        ),
        infoFailureOrSuccess: none(),
      );
    }, cityChanged: (e) async* {
      yield state.copyWith(
        info: state.info.copyWith(
          city: City(e.city),
        ),
        infoFailureOrSuccess: none(),
      );
    }, initialized: (e) async* {
      yield state.copyWith(
        info: e.info,
        isEditing: true,
      );
    }, imageUploaded: (e) async* {
      final Either<InfoFailure, String> failureOrImageUrl =
          await _repoInterface.uploadImage(e.image);

      yield failureOrImageUrl.fold(
          (f) => state.copyWith(
              infoFailureOrSuccess: none(), imageFailureOrSuccess: some(f)),
          (url) => state.copyWith(
              info: state.info.copyWith(imageUrl: url),
              imageFailureOrSuccess: none()));
    }, expertStatusChanged: (e) async* {
      yield state.copyWith(
        info: state.info.copyWith(
          expertOrNot: e.status,
        ),
        infoFailureOrSuccess: none(),
      );
    });
  }
}
