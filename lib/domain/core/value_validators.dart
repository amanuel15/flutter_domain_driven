import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:kt_dart/collection.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input, int maxLength) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListLength<T>(
    KtList<T> input, int length) {
  // if (input.size == length) {
  return right(input);
  // } else {
  //   return left(ValueFailure.wrongCatagoryDepth(
  //     failedValue: input,
  //     length: length,
  //   ));
  // }
}

Either<ValueFailure<int>, int> validateAmount(int input) {
  if (input.isNaN) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    if (input.isNegative) return right(input * -1);
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<ImageProperties>, ImageProperties> validateImageParameter(
    {ImageProperties imageProperties,
    double aspectRatio,
    int minWidth,
    int maxWidth,
    int minHeight,
    int maxHeight}) {
//  img.Image imageFromFile;
//  decodeImageFromList(imageProperties.image.readAsBytesSync()).then((value) => {
//        imageFromFile = value,
//      });
  if (imageProperties.rawImage.width < minWidth ||
      imageProperties.rawImage.height < minHeight) {
    return left(ValueFailure.invalidImageParameter(
        image: imageProperties.image,
        isSmall: true,
        isLarge: false,
        correctAspectRatio: true));
  } else if (imageProperties.rawImage.width > maxWidth ||
      imageProperties.rawImage.height > maxHeight) {
    return left(ValueFailure.invalidImageParameter(
        image: imageProperties.image,
        isSmall: false,
        isLarge: true,
        correctAspectRatio: true));
  } else {
    return right(imageProperties);
  }
//}
}
