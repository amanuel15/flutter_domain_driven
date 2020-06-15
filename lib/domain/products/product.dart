import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required ProductName productName,
    @required ProductDescription productDescription,
    @required ProductHypeDescription productHypeDescription,
    @required TotalAmount totalAmount,
    @required SoldAmount soldAmount,
    @required ListImage<ImageItem> images,
    @required ListCatagories<CatagoryItem> route,
  }) = _Product;

  factory Product.empty() => Product(
    productName: ProductName(''),
    productDescription: ProductDescription(''),
    productHypeDescription: ProductHypeDescription(''),
    totalAmount: TotalAmount(0),
    soldAmount: SoldAmount(0),
    images: ListImage(emptyList()),
    route: ListCatagories(emptyList()),
  );
}

extension ProductX on Product {
  Option<ValueFailure<dynamic>> get failureOption {
    return productName.failureOrUnit
        .andThen(productDescription.failureOrUnit)
        .andThen(productHypeDescription.failureOrUnit)
        .andThen(totalAmount.failureOrUnit)
        .andThen(soldAmount.failureOrUnit)
        .andThen(images.failureOrUnit)
        .andThen(
          images.getOrCrash()
          .map((imageItem) => imageItem.failureOption)
          .filter((o) => o.isSome())
          .getOrElse(0, (_) => none())
          .fold(() => right(unit), (f) => left(f)),
        )
        .andThen(route.failureOrUnit)
        .andThen(
          route.getOrCrash()
          .map((imageItem) => imageItem.failureOption)
          .filter((o) => o.isSome())
          .getOrElse(0, (_) => none())
          .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}