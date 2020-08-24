import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/failures.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/sub_product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @required UniqueId id,
    @required ProductName productName,
    @required ProductDescription productDescription,
    @required ProductHypeDescription hypeDescription,
    @required TotalAmount totalAmount,
    @required SoldAmount soldAmount,
    // TODO: consider making this list image making a list of ImageUrl instead of Images
    @required ListImage<ImageUrl> images,
    @required ListCatagories<CatagoryName> catagories,
    @required ListSubProducts<SubProduct> subProducts,
  }) = _Product;

  factory Product.empty() => Product(
        id: UniqueId(),
        productName: ProductName(''),
        productDescription: ProductDescription(''),
        hypeDescription: ProductHypeDescription(''),
        totalAmount: TotalAmount(0),
        soldAmount: SoldAmount(0),
        images: ListImage(emptyList()),
        catagories: ListCatagories(emptyList()),
        subProducts: ListSubProducts(const []),
      );
}

extension ProductX on Product {
  Option<ValueFailure<dynamic>> get failureOption {
    return productName.failureOrUnit
        .andThen(productDescription.failureOrUnit)
        .andThen(hypeDescription.failureOrUnit)
        .andThen(totalAmount.failureOrUnit)
        .andThen(soldAmount.failureOrUnit)
        .andThen(images.failureOrUnit)
        .andThen(images
            .getOrCrash()
            .map((imageUrl) => imageUrl.failureOrUnit)
            .getOrElse(0, (_) => null)
            .fold((f) => left(f), (r) => right(unit)))
        .andThen(catagories.failureOrUnit)
        .andThen(catagories
            .getOrCrash()
            .map((catagoryName) => catagoryName.failureOrUnit)
            .getOrElse(0, (_) => null)
            .fold((f) => left(f), (r) => right(unit)))
        .andThen(subProducts.failureOrUnit)
        .andThen(
          subProducts
              .getOrCrash()
              .map((subProduct) => subProduct.failureOption)
              .toImmutableList()
              .filter((o) => o.isSome())
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }
}
