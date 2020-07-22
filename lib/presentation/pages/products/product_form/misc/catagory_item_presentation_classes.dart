import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'catagory_item_presentation_classes.freezed.dart';

class FormCatagory extends ValueNotifier<KtList<CatagoryItemPrimitive>> {
  FormCatagory() : super(emptyList<CatagoryItemPrimitive>());
}

@freezed
abstract class CatagoryItemPrimitive with _$CatagoryItemPrimitive {
  const factory CatagoryItemPrimitive({
    @required UniqueId id,
    @required String name,
    @required bool done,
  }) = _CatagoryItemPrimitive;

  factory CatagoryItemPrimitive.empty() => CatagoryItemPrimitive(
        id: UniqueId(),
        name: '',
        done: false,
      );

  factory CatagoryItemPrimitive.fromDomain(CatagoryItem catagoryItem) =>
      CatagoryItemPrimitive(
        id: catagoryItem.id,
        // If we somehow get to this point, we missed something in other parts of the UI. It's better to throw an Error.
        name: catagoryItem.name.getOrCrash(),
        done: catagoryItem.done,
      );
}

extension CatagoryItemPrimitiveX on CatagoryItemPrimitive {
  CatagoryItem toDomain() {
    return CatagoryItem(
      id: id,
      name: CatagoryName(name),
      done: done,
    );
  }
}
