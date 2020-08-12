// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  });
}

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  NumberTooLarge<T> numberTooLarge<T>(
      {@required T failedValue, @required num max}) {
    return NumberTooLarge<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  WrongCatagoryDepth<T> wrongCatagoryDepth<T>(
      {@required T failedValue, @required int length}) {
    return WrongCatagoryDepth<T>(
      failedValue: failedValue,
      length: length,
    );
  }

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhotoUrl<T> invalidPhotoUrl<T>({@required T failedValue}) {
    return InvalidPhotoUrl<T>(
      failedValue: failedValue,
    );
  }

  InvalidImageParameter<T> invalidImageParameter<T>(
      {File image, bool isSmall, bool isLarge, bool correctAspectRatio}) {
    return InvalidImageParameter<T>(
      image: image,
      isSmall: isSmall,
      isLarge: isLarge,
      correctAspectRatio: correctAspectRatio,
    );
  }
}

const $ValueFailure = _$ValueFailureTearOff();

class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$ExceedingLength<T> copyWith({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _$ExceedingLength<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      max: max == freezed ? this.max : max as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  T get failedValue;
  int get max;

  ExceedingLength<T> copyWith({T failedValue, int max});
}

class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$Empty<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$Empty<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  T get failedValue;

  Empty<T> copyWith({T failedValue});
}

class _$Multiline<T> with DiagnosticableTreeMixin implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.multiline'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$Multiline<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$Multiline<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  T get failedValue;

  Multiline<T> copyWith({T failedValue});
}

class _$NumberTooLarge<T>
    with DiagnosticableTreeMixin
    implements NumberTooLarge<T> {
  const _$NumberTooLarge({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.numberTooLarge(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.numberTooLarge'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberTooLarge<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$NumberTooLarge<T> copyWith({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _$NumberTooLarge<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      max: max == freezed ? this.max : max as num,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return numberTooLarge(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return numberTooLarge(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (numberTooLarge != null) {
      return numberTooLarge(this);
    }
    return orElse();
  }
}

abstract class NumberTooLarge<T> implements ValueFailure<T> {
  const factory NumberTooLarge({@required T failedValue, @required num max}) =
      _$NumberTooLarge<T>;

  T get failedValue;
  num get max;

  NumberTooLarge<T> copyWith({T failedValue, num max});
}

class _$ListTooLong<T> with DiagnosticableTreeMixin implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.listTooLong'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('max', max));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  _$ListTooLong<T> copyWith({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _$ListTooLong<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      max: max == freezed ? this.max : max as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  T get failedValue;
  int get max;

  ListTooLong<T> copyWith({T failedValue, int max});
}

class _$WrongCatagoryDepth<T>
    with DiagnosticableTreeMixin
    implements WrongCatagoryDepth<T> {
  const _$WrongCatagoryDepth(
      {@required this.failedValue, @required this.length})
      : assert(failedValue != null),
        assert(length != null);

  @override
  final T failedValue;
  @override
  final int length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.wrongCatagoryDepth(failedValue: $failedValue, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.wrongCatagoryDepth'))
      ..add(DiagnosticsProperty('failedValue', failedValue))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WrongCatagoryDepth<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(length);

  @override
  _$WrongCatagoryDepth<T> copyWith({
    Object failedValue = freezed,
    Object length = freezed,
  }) {
    return _$WrongCatagoryDepth<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
      length: length == freezed ? this.length : length as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return wrongCatagoryDepth(failedValue, length);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongCatagoryDepth != null) {
      return wrongCatagoryDepth(failedValue, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return wrongCatagoryDepth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongCatagoryDepth != null) {
      return wrongCatagoryDepth(this);
    }
    return orElse();
  }
}

abstract class WrongCatagoryDepth<T> implements ValueFailure<T> {
  const factory WrongCatagoryDepth(
      {@required T failedValue,
      @required int length}) = _$WrongCatagoryDepth<T>;

  T get failedValue;
  int get length;

  WrongCatagoryDepth<T> copyWith({T failedValue, int length});
}

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidEmail<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$InvalidEmail<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue;

  InvalidEmail<T> copyWith({T failedValue});
}

class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$ShortPassword<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$ShortPassword<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  T get failedValue;

  ShortPassword<T> copyWith({T failedValue});
}

class _$InvalidPhotoUrl<T>
    with DiagnosticableTreeMixin
    implements InvalidPhotoUrl<T> {
  const _$InvalidPhotoUrl({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhotoUrl(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhotoUrl'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhotoUrl<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  _$InvalidPhotoUrl<T> copyWith({
    Object failedValue = freezed,
  }) {
    return _$InvalidPhotoUrl<T>(
      failedValue: failedValue == freezed ? this.failedValue : failedValue as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return invalidPhotoUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return invalidPhotoUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhotoUrl != null) {
      return invalidPhotoUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidPhotoUrl<T> implements ValueFailure<T> {
  const factory InvalidPhotoUrl({@required T failedValue}) =
      _$InvalidPhotoUrl<T>;

  T get failedValue;

  InvalidPhotoUrl<T> copyWith({T failedValue});
}

class _$InvalidImageParameter<T>
    with DiagnosticableTreeMixin
    implements InvalidImageParameter<T> {
  const _$InvalidImageParameter(
      {this.image, this.isSmall, this.isLarge, this.correctAspectRatio});

  @override
  final File image;
  @override
  final bool isSmall;
  @override
  final bool isLarge;
  @override
  final bool correctAspectRatio;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidImageParameter(image: $image, isSmall: $isSmall, isLarge: $isLarge, correctAspectRatio: $correctAspectRatio)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ValueFailure<$T>.invalidImageParameter'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('isSmall', isSmall))
      ..add(DiagnosticsProperty('isLarge', isLarge))
      ..add(DiagnosticsProperty('correctAspectRatio', correctAspectRatio));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidImageParameter<T> &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.isSmall, isSmall) ||
                const DeepCollectionEquality()
                    .equals(other.isSmall, isSmall)) &&
            (identical(other.isLarge, isLarge) ||
                const DeepCollectionEquality()
                    .equals(other.isLarge, isLarge)) &&
            (identical(other.correctAspectRatio, correctAspectRatio) ||
                const DeepCollectionEquality()
                    .equals(other.correctAspectRatio, correctAspectRatio)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(isSmall) ^
      const DeepCollectionEquality().hash(isLarge) ^
      const DeepCollectionEquality().hash(correctAspectRatio);

  @override
  _$InvalidImageParameter<T> copyWith({
    Object image = freezed,
    Object isSmall = freezed,
    Object isLarge = freezed,
    Object correctAspectRatio = freezed,
  }) {
    return _$InvalidImageParameter<T>(
      image: image == freezed ? this.image : image as File,
      isSmall: isSmall == freezed ? this.isSmall : isSmall as bool,
      isLarge: isLarge == freezed ? this.isLarge : isLarge as bool,
      correctAspectRatio: correctAspectRatio == freezed
          ? this.correctAspectRatio
          : correctAspectRatio as bool,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result exceedingLength(@required T failedValue, @required int max),
    @required Result empty(@required T failedValue),
    @required Result multiline(@required T failedValue),
    @required Result numberTooLarge(@required T failedValue, @required num max),
    @required Result listTooLong(@required T failedValue, @required int max),
    @required
        Result wrongCatagoryDepth(
            @required T failedValue, @required int length),
    @required Result invalidEmail(@required T failedValue),
    @required Result shortPassword(@required T failedValue),
    @required Result invalidPhotoUrl(@required T failedValue),
    @required
        Result invalidImageParameter(
            File image, bool isSmall, bool isLarge, bool correctAspectRatio),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return invalidImageParameter(image, isSmall, isLarge, correctAspectRatio);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(@required T failedValue, @required int max),
    Result empty(@required T failedValue),
    Result multiline(@required T failedValue),
    Result numberTooLarge(@required T failedValue, @required num max),
    Result listTooLong(@required T failedValue, @required int max),
    Result wrongCatagoryDepth(@required T failedValue, @required int length),
    Result invalidEmail(@required T failedValue),
    Result shortPassword(@required T failedValue),
    Result invalidPhotoUrl(@required T failedValue),
    Result invalidImageParameter(
        File image, bool isSmall, bool isLarge, bool correctAspectRatio),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImageParameter != null) {
      return invalidImageParameter(image, isSmall, isLarge, correctAspectRatio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result numberTooLarge(NumberTooLarge<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    @required Result invalidImageParameter(InvalidImageParameter<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(numberTooLarge != null);
    assert(listTooLong != null);
    assert(wrongCatagoryDepth != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(invalidPhotoUrl != null);
    assert(invalidImageParameter != null);
    return invalidImageParameter(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result numberTooLarge(NumberTooLarge<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result wrongCatagoryDepth(WrongCatagoryDepth<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result invalidPhotoUrl(InvalidPhotoUrl<T> value),
    Result invalidImageParameter(InvalidImageParameter<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImageParameter != null) {
      return invalidImageParameter(this);
    }
    return orElse();
  }
}

abstract class InvalidImageParameter<T> implements ValueFailure<T> {
  const factory InvalidImageParameter(
      {File image,
      bool isSmall,
      bool isLarge,
      bool correctAspectRatio}) = _$InvalidImageParameter<T>;

  File get image;
  bool get isSmall;
  bool get isLarge;
  bool get correctAspectRatio;

  InvalidImageParameter<T> copyWith(
      {File image, bool isSmall, bool isLarge, bool correctAspectRatio});
}
