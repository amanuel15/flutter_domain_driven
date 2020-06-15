// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Product {
  ProductName get productName;
  ProductDescription get productDescription;
  ProductHypeDescription get productHypeDescription;
  TotalAmount get totalAmount;
  SoldAmount get soldAmount;
  ListImage<ImageItem> get images;
  ListCatagories<CatagoryItem> get route;

  Product copyWith(
      {ProductName productName,
      ProductDescription productDescription,
      ProductHypeDescription productHypeDescription,
      TotalAmount totalAmount,
      SoldAmount soldAmount,
      ListImage<ImageItem> images,
      ListCatagories<CatagoryItem> route});
}

class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {@required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductHypeDescription productHypeDescription,
      @required TotalAmount totalAmount,
      @required SoldAmount soldAmount,
      @required ListImage<ImageItem> images,
      @required ListCatagories<CatagoryItem> route}) {
    return _Product(
      productName: productName,
      productDescription: productDescription,
      productHypeDescription: productHypeDescription,
      totalAmount: totalAmount,
      soldAmount: soldAmount,
      images: images,
      route: route,
    );
  }
}

const $Product = _$ProductTearOff();

class _$_Product implements _Product {
  const _$_Product(
      {@required this.productName,
      @required this.productDescription,
      @required this.productHypeDescription,
      @required this.totalAmount,
      @required this.soldAmount,
      @required this.images,
      @required this.route})
      : assert(productName != null),
        assert(productDescription != null),
        assert(productHypeDescription != null),
        assert(totalAmount != null),
        assert(soldAmount != null),
        assert(images != null),
        assert(route != null);

  @override
  final ProductName productName;
  @override
  final ProductDescription productDescription;
  @override
  final ProductHypeDescription productHypeDescription;
  @override
  final TotalAmount totalAmount;
  @override
  final SoldAmount soldAmount;
  @override
  final ListImage<ImageItem> images;
  @override
  final ListCatagories<CatagoryItem> route;

  @override
  String toString() {
    return 'Product(productName: $productName, productDescription: $productDescription, productHypeDescription: $productHypeDescription, totalAmount: $totalAmount, soldAmount: $soldAmount, images: $images, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)) &&
            (identical(other.productHypeDescription, productHypeDescription) ||
                const DeepCollectionEquality().equals(
                    other.productHypeDescription, productHypeDescription)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.totalAmount, totalAmount)) &&
            (identical(other.soldAmount, soldAmount) ||
                const DeepCollectionEquality()
                    .equals(other.soldAmount, soldAmount)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productHypeDescription) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(soldAmount) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(route);

  @override
  _$_Product copyWith({
    Object productName = freezed,
    Object productDescription = freezed,
    Object productHypeDescription = freezed,
    Object totalAmount = freezed,
    Object soldAmount = freezed,
    Object images = freezed,
    Object route = freezed,
  }) {
    return _$_Product(
      productName: productName == freezed
          ? this.productName
          : productName as ProductName,
      productDescription: productDescription == freezed
          ? this.productDescription
          : productDescription as ProductDescription,
      productHypeDescription: productHypeDescription == freezed
          ? this.productHypeDescription
          : productHypeDescription as ProductHypeDescription,
      totalAmount: totalAmount == freezed
          ? this.totalAmount
          : totalAmount as TotalAmount,
      soldAmount:
          soldAmount == freezed ? this.soldAmount : soldAmount as SoldAmount,
      images: images == freezed ? this.images : images as ListImage<ImageItem>,
      route:
          route == freezed ? this.route : route as ListCatagories<CatagoryItem>,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@required ProductName productName,
      @required ProductDescription productDescription,
      @required ProductHypeDescription productHypeDescription,
      @required TotalAmount totalAmount,
      @required SoldAmount soldAmount,
      @required ListImage<ImageItem> images,
      @required ListCatagories<CatagoryItem> route}) = _$_Product;

  @override
  ProductName get productName;
  @override
  ProductDescription get productDescription;
  @override
  ProductHypeDescription get productHypeDescription;
  @override
  TotalAmount get totalAmount;
  @override
  SoldAmount get soldAmount;
  @override
  ListImage<ImageItem> get images;
  @override
  ListCatagories<CatagoryItem> get route;

  @override
  _Product copyWith(
      {ProductName productName,
      ProductDescription productDescription,
      ProductHypeDescription productHypeDescription,
      TotalAmount totalAmount,
      SoldAmount soldAmount,
      ListImage<ImageItem> images,
      ListCatagories<CatagoryItem> route});
}
