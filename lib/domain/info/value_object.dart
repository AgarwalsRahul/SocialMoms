import 'package:dartz/dartz.dart';
import 'package:social_media/domain/core/failures.dart';
import 'package:social_media/domain/core/value_objects.dart';
import 'package:social_media/domain/core/value_validators.dart';

class UserName extends ValueObjects<String> {
  Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    return UserName._(validateStringNotEmpty(input));
  }
  UserName._(this.value);
}

// ignore: must_be_immutable
class Age extends ValueObjects<int> {
  Either<ValueFailure<int>, int> value;

  factory Age(int input) {
    assert(input != null);
    return Age._(validateAge(input));
  }
  Age._(this.value);
}

class City extends ValueObjects<String> {
  Either<ValueFailure<String>, String> value;

  factory City(String input) {
    assert(input != null);
    return City._(validateStringNotEmpty(input));
  }
  City._(this.value);
}

class ShortBio extends ValueObjects<String> {
  Either<ValueFailure<String>, String> value;
  static const maxLength = 200;
  factory ShortBio(String input) {
    assert(input != null);
    return ShortBio._(validateMaxLengthString(input, maxLength)
        .flatMap(validateStringNotEmpty));
  }
  ShortBio._(this.value);
}
