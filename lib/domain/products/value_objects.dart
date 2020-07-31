import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';

class ProductName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory ProductName(String input) {
    assert(input != null);
    return ProductName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const ProductName._(this.value);
}

class ProductDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory ProductDescription(String input) {
    assert(input != null);
    return ProductDescription._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ProductDescription._(this.value);
}

class ProductHypeDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory ProductHypeDescription(String input) {
    assert(input != null);
    return ProductHypeDescription._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const ProductHypeDescription._(this.value);
}

class TotalAmount extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory TotalAmount(int input) {
    assert(input != null);
    return TotalAmount._(
      validateAmount(input),
    );
  }

  const TotalAmount._(this.value);
}

class SoldAmount extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory SoldAmount(int input) {
    assert(input != null);
    return SoldAmount._(
      validateAmount(input),
    );
  }

  const SoldAmount._(this.value);
}

class Catagory extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory Catagory(String input) {
    assert(input != null);
    return Catagory._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const Catagory._(this.value);
}

class ImageUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ImageUrl(String input) {
    assert(input != null);
    return ImageUrl._(
      validateStringNotEmpty(input),
    );
  }

  const ImageUrl._(this.value);
}

class CatagoryName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CatagoryName(String input) {
    assert(input != null);
    return CatagoryName._(
      validateStringNotEmpty(input),
    );
  }

  const CatagoryName._(this.value);
}

class ListImage<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxAmount = 10;

  factory ListImage(KtList<T> input) {
    assert(input != null);
    return ListImage._(
      validateMaxListLength(input, maxAmount),
    );
  }

  const ListImage._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxAmount;
  }
}

class ListCatagories<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory ListCatagories(KtList<T> input) {
    assert(input != null);
    return ListCatagories._(
      validateListLength(input, maxLength),
    );
  }

  const ListCatagories._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}
