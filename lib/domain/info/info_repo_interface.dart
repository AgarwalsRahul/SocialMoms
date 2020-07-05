import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_media/domain/auth/user.dart';
import 'package:social_media/domain/info/info.dart';
import 'package:social_media/domain/info/info_failure.dart';

abstract class InfoRepoInterface {
  Future<Either<InfoFailure, Unit>> create(UserInfo info);
  Future<Either<InfoFailure, Unit>> update(UserInfo info);
  Stream<Either<InfoFailure, UserInfo>> getInfo();
  Future<Either<InfoFailure, String>> uploadImage(File image);
}
