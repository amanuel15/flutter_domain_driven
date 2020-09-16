// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Product {
  UniqueId get id;
  ProductName get productName;
  ProductDescription get productDescription;
  ProductHypeDescription get hypeDescription;
  TotalAmount get totalAmount;
  SoldAmount get soldAmount;
  ListImage<ImageUrl> get images;
  ImageUrl get portraitImage;
  ListCatagories<CatagoryName> get catagories;
  ListSubProducts<SubProduct> get subProducts;

  Product copyWith(
      {UniqueId id,
      ProductName productName,
      ProductDescription productDescription,
      ProductHypeDescription hypeDescription,
      TotalAmount totalAmount,
      SoldAmount soldAmount,
      ListImage<ImageUrl> images,
      ImageUrl portraitImage,
      ListCatagories<CatagoryName> catagories,
      ListSubProducts<SubProduct> subProducts});
}

class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {@required UniqueId id,
      @required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductHypeDescription hypeDescription,
      @required TotalAmount totalAmount,
      @required SoldAmount soldAmount,
      @required ListImage<ImageUrl> images,
      @required ImageUrl portraitImage,
      @required ListCatagories<CatagoryName> catagories,
      @required ListSubProducts<SubProduct> subProducts}) {
    return _Product(
      id: id,
      productName: productName,
      productDescription: productDescription,
      hypeDescription: hypeDescription,
      totalAmount: totalAmount,
      soldAmount: soldAmount,
      images: images,
      portraitImage: portraitImage,
      catagories: catagories,
      subProducts: subProducts,
    );
  }
}

const $Product = _$ProductTearOff();

class _$_Product implements _Product {
  const _$_Product(
      {@required this.id,
      @required this.productName,
      @required this.productDescription,
      @required this.hypeDescription,
      @required this.totalAmount,
      @required this.soldAmount,
      @required this.images,
      @required this.portraitImage,
      @required this.catagories,
      @required this.subProducts})
      : assert(id != null),
        assert(productName != null),
        assert(productDescription != null),
        assert(hypeDescription != null),
        assert(totalAmount != null),
        assert(soldAmount != null),
        assert(images != null),
        assert(portraitImage != null),
        assert(catagories != null),
        assert(subProducts != null);

  @override
  final UniqueId id;
  @override
  final ProductName productName;
  @override
  final ProductDescription productDescription;
  @override
  final ProductHypeDescription hypeDescription;
  @override
  final TotalAmount totalAmount;
  @override
  final SoldAmount soldAmount;
  @override
  final ListImage<ImageUrl> images;
  @override
  final ImageUrl portraitImage;
  @override
  final ListCatagories<CatagoryName> catagories;
  @override
  final ListSubProducts<SubProduct> subProducts;

  @override
  String toString() {
    return 'Product(id: $id, productName: $productName, productDescription: $productDescription, hypeDescription: $hypeDescription, totalAmount: $totalAmount, soldAmount: $soldAmount, images: $images, portraitImage: $portraitImage, catagories: $catagories, subProducts: $subProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)) &&
            (identical(other.hypeDescription, hypeDescription) ||
                const DeepCollectionEquality()
                    .equals(other.hypeDescription, hypeDescription)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.soldAmount, soldAmount) ||
                const DeepCollectionEquality()
                    .equals(other.soldAmount, soldAmount)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.portraitImage, portraitImage) ||
                const DeepCollectionEquality()
                    .equals(other.portraitImage, portraitImage)) &&
            (identical(other.catagories, catagories) ||
                const DeepCollectionEquality()
                    .equals(other.catagories, catagories)) &&
            (identical(other.subProducts, subProducts) ||
                const DeepCollectionEquality()
                    .equals(other.subProducts, subProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(hypeDescription) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(soldAmount) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(portraitImage) ^
      const DeepCollectionEquality().hash(catagories) ^
      const DeepCollectionEquality().hash(subProducts);

  @override
  _$_Product copyWith({
    Object id = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object hypeDescription = freezed,
    Object totalAmount = freezed,
    Object soldAmount = freezed,
    Object images = freezed,
    Object portraitImage = freezed,
    Object catagories = freezed,
    Object subProducts = freezed,
  }) {
    return _$_Product(
      id: id == freezed ? this.id : id as UniqueId,
      productName: productName == freezed
          ? this.productName
          : productName as ProductName,
      productDescription: productDescription == freezed
          ? this.productDescription
          : productDescription as ProductDescription,
      hypeDescription: hypeDescription == freezed
          ? this.hypeDescription
          : hypeDescription as ProductHypeDescription,
      totalAmount: totalAmount == freezed
          ? this.totalAmount
          : totalAmount as TotalAmount,
      soldAmount:
          soldAmount == freezed ? this.soldAmount : soldAmount as SoldAmount,
      images: images == freezed ? this.images : images as ListImage<ImageUrl>,
      portraitImage: portraitImage == freezed
          ? this.portraitImage
          : portraitImage as ImageUrl,
      catagories: catagories == freezed
          ? this.catagories
          : catagories as ListCatagories<CatagoryName>,
      subProducts: subProducts == freezed
          ? this.subProducts
          : subProducts as ListSubProducts<SubProduct>,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@required UniqueId id,
      @required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductHypeDescription hypeDescription,
      @required TotalAmount totalAmount,
      @required SoldAmount soldAmount,
      @required ListImage<ImageUrl> images,
      @required ImageUrl portraitImage,
      @required ListCatagories<CatagoryName> catagories,
      @required ListSubProducts<SubProduct> subProducts}) = _$_Product;

  @override
  UniqueId get id;
  @override
  ProductName get productName;
  @override
  ProductDescription get productDescription;
  @override
  ProductHypeDescription get hypeDescription;
  @override
  TotalAmount get totalAmount;
  @override
  SoldAmount get soldAmount;
  @override
  ListImage<ImageUrl> get images;
  @override
  ImageUrl get portraitImage;
  @override
  ListCatagories<CatagoryName> get catagories;
  @override
  ListSubProducts<SubProduct> get subProducts;

  @override
  _Product copyWith(
      {UniqueId id,
      ProductName productName,
      ProductDescription productDescription,
      ProductHypeDescription hypeDescription,
      TotalAmount totalAmount,
      SoldAmount soldAmount,
      ListImage<ImageUrl> images,
      ImageUrl portraitImage,
      ListCatagories<CatagoryName> catagories,
      ListSubProducts<SubProduct> subProducts});
}
