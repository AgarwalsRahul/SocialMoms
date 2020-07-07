import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/core/errors.dart';
import 'package:social_media/domain/info/info_failure.dart';
import 'package:social_media/domain/info/info.dart';
import 'package:dartz/dartz.dart';
import 'package:social_media/domain/info/info_repo_interface.dart';
import 'package:social_media/infrastructure/core/media_service.dart';
import 'package:social_media/infrastructure/info/info_dtos.dart';
import '../../injection.dart';
import '../core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: InfoRepoInterface)
class InfoRepository implements InfoRepoInterface {
  final Firestore _firestore;

  InfoRepository(
    this._firestore,
  );
  @override
  Future<Either<InfoFailure, Unit>> create(UserInfo info) async {
    try {
      final userDoc = await _firestore.userDocument();
      final infoDTO = InfoDTO.fromDomain(info);
      await userDoc.infoCollection
          .document(infoDTO.id)
          .setData(infoDTO.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermission());
      } else {
        return left(const InfoFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<InfoFailure, UserInfo>> getInfo() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.infoCollection
        .snapshots()
        .map((snapshot) => right(snapshot.documents
            .map((doc) => InfoDTO.fromFirestore(doc).toDomain())
            .toList()[0]))
        .onErrorReturnWith((error) {
      if (error is PlatformException &&
          error.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermission());
      } else {
        return left(const InfoFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<InfoFailure, Unit>> update(UserInfo info) async {
    try {
      final userDoc = await _firestore.userDocument();
      final infoDTO = InfoDTO.fromDomain(info);
      await userDoc.infoCollection
          .document(infoDTO.id)
          .updateData(infoDTO.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const InfoFailure.insufficientPermission());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const InfoFailure.unableToUpdate());
      } else {
        return left(const InfoFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<InfoFailure, String>> uploadImage(File image) async {
    try {
      // final File image = await MediaService.instance.getProfileImage();
      if (image == null) {
        return left(const InfoFailure.cancelledByUser());
      }
      final userOption = await getIt<AuthFacade>().getSignedInUser();
      final String uid = userOption
          .getOrElse(() => throw NotAuthenticatedError())
          .id
          .getOrCrash();
      final imageFile = await FirebaseStorage.instance
          .ref()
          .child('profileImages')
          .child(uid)
          .putFile(image)
          .onComplete;
      final imageUrl = await imageFile.ref.getDownloadURL();
      print(imageUrl);
      return right(imageUrl);
    } on PlatformException catch (_) {
      return left(InfoFailure.unexpected());
    }
  }
}
