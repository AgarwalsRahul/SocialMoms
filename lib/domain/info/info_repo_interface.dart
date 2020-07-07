import 'dart:io';

import 'package:dartz/dartz.dart';

import 'info.dart';
import 'info_failure.dart';

abstract class InfoRepoInterface {
  Future<Either<InfoFailure, Unit>> create(UserInfo info);
  Future<Either<InfoFailure, Unit>> update(UserInfo info);
  Stream<Either<InfoFailure, UserInfo>> getInfo();
  Future<Either<InfoFailure, String>> uploadImage(File image);
}
