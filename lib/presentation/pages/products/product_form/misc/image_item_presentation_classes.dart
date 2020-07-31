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
    @required String name,
  }) = _ImageItemPrimitive;

  factory ImageItemPrimitive.empty() => const ImageItemPrimitive(
        name: '',
      );

  factory ImageItemPrimitive.fromDomain(ImageUrl imageUrl) =>
      ImageItemPrimitive(
        // If we somehow get to this point, we missed something in other parts of the UI. It's better to throw an Error.
        name: imageUrl.getOrCrash(),
      );
}

extension ImageItemPrimitiveX on ImageItemPrimitive {
  ImageUrl toDomain() {
    return ImageUrl(name);
  }
}
