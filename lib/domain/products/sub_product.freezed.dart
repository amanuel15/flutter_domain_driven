// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sub_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SubProduct {
  ProductName get name;
  TotalAmount get amount;
  SoldAmount get price;
  String get imageUrl;
  ImageProperties get imageProperties;

  SubProduct copyWith(
      {ProductName name,
      TotalAmount amount,
      SoldAmount price,
      String imageUrl,
      ImageProperties imageProperties});
}

class _$SubProductTearOff {
  const _$SubProductTearOff();

  _SubProduct call(
      {@required ProductName name,
      @required TotalAmount amount,
      @required SoldAmount price,
      String imageUrl,
      ImageProperties imageProperties}) {
    return _SubProduct(
      name: name,
      amount: amount,
      price: price,
      imageUrl: imageUrl,
      imageProperties: imageProperties,
    );
  }
}

const $SubProduct = _$SubProductTearOff();

class _$_SubProduct implements _SubProduct {
  const _$_SubProduct(
      {@required this.name,
      @required this.amount,
      @required this.price,
      this.imageUrl,
      this.imageProperties})
      : assert(name != null),
        assert(amount != null),
        assert(price != null);

  @override
  final ProductName name;
  @override
  final TotalAmount amount;
  @override
  final SoldAmount price;
  @override
  final String imageUrl;
  @override
  final ImageProperties imageProperties;

  @override
  String toString() {
    return 'SubProduct(name: $name, amount: $amount, price: $price, imageUrl: $imageUrl, imageProperties: $imageProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubProduct &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(imageProperties);

  @override
  _$_SubProduct copyWith({
    Object name = freezed,
    Object amount = freezed,
    Object price = freezed,
    Object imageUrl = freezed,
    Object imageProperties = freezed,
  }) {
    return _$_SubProduct(
      name: name == freezed ? this.name : name as ProductName,
      amount: amount == freezed ? this.amount : amount as TotalAmount,
      price: price == freezed ? this.price : price as SoldAmount,
      imageUrl: imageUrl == freezed ? this.imageUrl : imageUrl as String,
      imageProperties: imageProperties == freezed
          ? this.imageProperties
          : imageProperties as ImageProperties,
    );
  }
}

abstract class _SubProduct implements SubProduct {
  const factory _SubProduct(
      {@required ProductName name,
      @required TotalAmount amount,
      @required SoldAmount price,
      String imageUrl,
      ImageProperties imageProperties}) = _$_SubProduct;

  @override
  ProductName get name;
  @override
  TotalAmount get amount;
  @override
  SoldAmount get price;
  @override
  String get imageUrl;
  @override
  ImageProperties get imageProperties;

  @override
  _SubProduct copyWith(
      {ProductName name,
      TotalAmount amount,
      SoldAmount price,
      String imageUrl,
      ImageProperties imageProperties});
}
