import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'image_item_presentation_classes.freezed.dart';

class FormImages extends ValueNotifier<KtList<ImageItemPrimitive>> {
  FormImages() : super(emptyList<ImageItemPrimitive>());
}

@freezed
abstract class ImageItemPrimitive with _$ImageItemPrimitive {
  const factory ImageItemPrimitive({
    @required UniqueId id,
    @required String name,
    @required bool done,
  }) = _ImageItemPrimitive;

  factory ImageItemPrimitive.empty() => ImageItemPrimitive(
        id: UniqueId(),
        name: '',
        done: false,
      );

  factory ImageItemPrimitive.fromDomain(ImageItem imageItemValue) =>
      ImageItemPrimitive(
        id: imageItemValue.id,
        // If we somehow get to this point, we missed something in other parts of the UI. It's better to throw an Error.
        name: imageItemValue.name.getOrCrash(),
        done: imageItemValue.done,
      );
}

extension ImageItemPrimitiveX on ImageItemPrimitive {
  ImageItem toDomain() {
    return ImageItem(
      id: id,
      name: ImageUrl(name),
      done: done,
    );
  }
}
