import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'failures.dart';

@immutable
abstract class ValueObjects<T> {
  const ValueObjects();
  Either<ValueFailure<T>, T> get value;

  /// Throw [UnexpectedValueError] with [ValueFailure]
  T getOrCrash() {
    // id=> identity <=> (r)=>r
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  String toString() => 'Value($value)';

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (_) => right(unit));
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObjects && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UniqueId extends ValueObjects<String> {
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uid) {
    assert(uid != null);
    return UniqueId._(right(uid));
  }

  UniqueId._(this.value);
}
