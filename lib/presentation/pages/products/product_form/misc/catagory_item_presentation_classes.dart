import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'catagory_item_presentation_classes.freezed.dart';

class FormCatagories extends ValueNotifier<KtList<CatagoryItemPrimitive>> {
  FormCatagories() : super(emptyList<CatagoryItemPrimitive>());
}

@freezed
abstract class CatagoryItemPrimitive with _$CatagoryItemPrimitive {
  const factory CatagoryItemPrimitive({
    @required String name,
  }) = _CatagoryItemPrimitive;

  factory CatagoryItemPrimitive.empty() => const CatagoryItemPrimitive(
        name: '',
      );

  factory CatagoryItemPrimitive.fromDomain(CatagoryName catagoryName) =>
      CatagoryItemPrimitive(
        // If we somehow get to this point, we missed something in other parts of the UI. It's better to throw an Error.
        name: catagoryName.getOrCrash(),
      );
}

extension CatagoryItemPrimitiveX on CatagoryItemPrimitive {
  CatagoryName toDomain() {
    return CatagoryName(name);
  }
}
