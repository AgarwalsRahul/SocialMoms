import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_failure.freezed.dart';

@freezed
abstract class InfoFailure with _$InfoFailure {
  const factory InfoFailure.unexpected() = _Unexpected;
  const factory InfoFailure.insufficientPermission() = _InsufficientPermission;
  const factory InfoFailure.unableToUpdate() = _UnableToUpdate;
  const factory InfoFailure.cancelledByUser() = _CancelledByUser;
}
