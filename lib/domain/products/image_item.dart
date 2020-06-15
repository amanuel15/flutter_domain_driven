import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/entity.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_item.freezed.dart';

@freezed
abstract class ImageItem with _$ImageItem implements IEntity {
  const factory ImageItem({
    @required UniqueId id,
    @required ImageUrl name,
    @required bool done,
  }) = _ImageItem;

  factory ImageItem.empty() => ImageItem(
        id: UniqueId(),
        name: ImageUrl(''),
        done: false,
      );
}

extension ImageItemX on ImageItem {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}