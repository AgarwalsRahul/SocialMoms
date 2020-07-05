import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({@required T failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.shortPassword({@required T failedValue}) =
      ShortPassword<T>;
  const factory ValueFailure.empty({
    @required T failedVaue,
  }) = Empty<T>;

  const factory ValueFailure.ageLimit({@required T failedValue}) = AgeLimit<T>;
  const factory ValueFailure.exceedingLength({
    @required T failedVaue,
    @required int max,
  }) = ExceedingLength<T>;
}
