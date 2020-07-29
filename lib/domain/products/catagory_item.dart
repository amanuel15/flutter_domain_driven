import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/entity.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catagory_item.freezed.dart';

@freezed
abstract class CatagoryItem with _$CatagoryItem implements IEntity {
  const factory CatagoryItem({
    @required UniqueId id,
    @required CatagoryName name,
    @required bool done,
  }) = _CatagoryItem;

  factory CatagoryItem.empty() => CatagoryItem(
        id: UniqueId(),
        name: CatagoryName(''),
        done: false,
      );
}

extension CatagoryItemX on CatagoryItem {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
