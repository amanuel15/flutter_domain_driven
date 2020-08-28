import 'package:finished_notes_firebase_ddd_course/domain/products/sub_product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_product_presentation_classes.freezed.dart';

class FormSubProducts extends ValueNotifier<List<SubProductPrimitive>> {
  FormSubProducts() : super(<SubProductPrimitive>[]);
}

@freezed
abstract class SubProductPrimitive with _$SubProductPrimitive {
  const factory SubProductPrimitive({
    @required String name,
    @required int amount,
    @required int price,
    @required List<Map> labels,
    String imageUrl,
  }) = _SubProductPrimitive;

  factory SubProductPrimitive.empty() => SubProductPrimitive(
        name: '',
        amount: 0,
        price: 0,
        labels: <Map>[],
      );

  factory SubProductPrimitive.fromDomain(SubProduct subProduct) =>
      SubProductPrimitive(
        name: subProduct.name.getOrCrash(),
        amount: subProduct.amount.getOrCrash(),
        price: subProduct.price.getOrCrash(),
        labels: subProduct.labels,
        imageUrl: subProduct.imageUrl,
      );
}

extension SubProductPrimitiveX on SubProductPrimitive {
  SubProduct toDomain() {
    return SubProduct(
      name: ProductName(name),
      amount: TotalAmount(amount),
      price: SoldAmount(price),
      labels: labels,
      imageUrl: imageUrl,
    );
  }
}
