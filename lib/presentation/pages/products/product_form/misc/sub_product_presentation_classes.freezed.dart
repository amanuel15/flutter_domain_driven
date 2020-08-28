// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sub_product_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SubProductPrimitive {
  String get name;
  int get amount;
  int get price;
  List<Map<dynamic, dynamic>> get labels;
  String get imageUrl;

  SubProductPrimitive copyWith(
      {String name,
      int amount,
      int price,
      List<Map<dynamic, dynamic>> labels,
      String imageUrl});
}

class _$SubProductPrimitiveTearOff {
  const _$SubProductPrimitiveTearOff();

  _SubProductPrimitive call(
      {@required String name,
      @required int amount,
      @required int price,
      @required List<Map<dynamic, dynamic>> labels,
      String imageUrl}) {
    return _SubProductPrimitive(
      name: name,
      amount: amount,
      price: price,
      labels: labels,
      imageUrl: imageUrl,
    );
  }
}

const $SubProductPrimitive = _$SubProductPrimitiveTearOff();

class _$_SubProductPrimitive
    with DiagnosticableTreeMixin
    implements _SubProductPrimitive {
  const _$_SubProductPrimitive(
      {@required this.name,
      @required this.amount,
      @required this.price,
      @required this.labels,
      this.imageUrl})
      : assert(name != null),
        assert(amount != null),
        assert(price != null),
        assert(labels != null);

  @override
  final String name;
  @override
  final int amount;
  @override
  final int price;
  @override
  final List<Map<dynamic, dynamic>> labels;
  @override
  final String imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubProductPrimitive(name: $name, amount: $amount, price: $price, labels: $labels, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubProductPrimitive'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('labels', labels))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubProductPrimitive &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(imageUrl);

  @override
  _$_SubProductPrimitive copyWith({
    Object name = freezed,
    Object amount = freezed,
    Object price = freezed,
    Object labels = freezed,
    Object imageUrl = freezed,
  }) {
    return _$_SubProductPrimitive(
      name: name == freezed ? this.name : name as String,
      amount: amount == freezed ? this.amount : amount as int,
      price: price == freezed ? this.price : price as int,
      labels: labels == freezed
          ? this.labels
          : labels as List<Map<dynamic, dynamic>>,
      imageUrl: imageUrl == freezed ? this.imageUrl : imageUrl as String,
    );
  }
}

abstract class _SubProductPrimitive implements SubProductPrimitive {
  const factory _SubProductPrimitive(
      {@required String name,
      @required int amount,
      @required int price,
      @required List<Map<dynamic, dynamic>> labels,
      String imageUrl}) = _$_SubProductPrimitive;

  @override
  String get name;
  @override
  int get amount;
  @override
  int get price;
  @override
  List<Map<dynamic, dynamic>> get labels;
  @override
  String get imageUrl;

  @override
  _SubProductPrimitive copyWith(
      {String name,
      int amount,
      int price,
      List<Map<dynamic, dynamic>> labels,
      String imageUrl});
}
