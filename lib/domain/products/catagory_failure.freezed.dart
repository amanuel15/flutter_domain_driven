// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catagory_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CatagoryFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermissions(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermissions(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(_InsufficientPermissions value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(_InsufficientPermissions value),
    @required Result orElse(),
  });
}

class _$CatagoryFailureTearOff {
  const _$CatagoryFailureTearOff();

  Unexpected unexpected() {
    return const Unexpected();
  }

  _InsufficientPermissions insufficientPermissions() {
    return const _InsufficientPermissions();
  }
}

const $CatagoryFailure = _$CatagoryFailureTearOff();

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'CatagoryFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(_InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements CatagoryFailure {
  const factory Unexpected() = _$Unexpected;
}

class _$_InsufficientPermissions implements _InsufficientPermissions {
  const _$_InsufficientPermissions();

  @override
  String toString() {
    return 'CatagoryFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(_InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements CatagoryFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}
