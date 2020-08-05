import 'package:freezed_annotation/freezed_annotation.dart';

part 'catagory_failure.freezed.dart';

@freezed
abstract class CatagoryFailure with _$CatagoryFailure {
  const factory CatagoryFailure.unexpected() = Unexpected;
  const factory CatagoryFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
