import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/entity.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_product.freezed.dart';

@freezed
abstract class SubProduct with _$SubProduct {
  const factory SubProduct({
    @required ProductName name,
    @required TotalAmount amount,
    @required SoldAmount price,
    @required List<Map> labels,
    String imageUrl,
    ImageProperties imageProperties,
  }) = _SubProduct;

  factory SubProduct.empty() => SubProduct(
        name: ProductName(''),
        amount: TotalAmount(0),
        price: SoldAmount(0),
        labels: <Map>[],
      );
}

extension SubProductX on SubProduct {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(amount.failureOrUnit)
        .andThen(price.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
