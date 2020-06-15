// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

mixin _$ProductDto {
  @JsonKey(ignore: true)
  String get id;
  String get productName;
  String get productDescription;
  String get productHypeDescription;
  int get totalAmount;
  int get soldAmount;
  List<ImageItemDto> get images;
  List<CatagoryItemDto> get catagories;

  ProductDto copyWith(
      {@JsonKey(ignore: true) String id,
      String productName,
      String productDescription,
      String productHypeDescription,
      int totalAmount,
      int soldAmount,
      List<ImageItemDto> images,
      List<CatagoryItemDto> catagories});

  Map<String, dynamic> toJson();
}

class _$ProductDtoTearOff {
  const _$ProductDtoTearOff();

  _ProductDto call(
      {@JsonKey(ignore: true) String id,
      @required String productName,
      @required String productDescription,
      @required String productHypeDescription,
      @required int totalAmount,
      @required int soldAmount,
      @required List<ImageItemDto> images,
      @required List<CatagoryItemDto> catagories}) {
    return _ProductDto(
      id: id,
      productName: productName,
      productDescription: productDescription,
      productHypeDescription: productHypeDescription,
      totalAmount: totalAmount,
      soldAmount: soldAmount,
      images: images,
      catagories: catagories,
    );
  }
}

const $ProductDto = _$ProductDtoTearOff();

@JsonSerializable()
class _$_ProductDto implements _ProductDto {
  _$_ProductDto(
      {@JsonKey(ignore: true) this.id,
      @required this.productName,
      @required this.productDescription,
      @required this.productHypeDescription,
      @required this.totalAmount,
      @required this.soldAmount,
      @required this.images,
      @required this.catagories})
      : assert(productName != null),
        assert(productDescription != null),
        assert(productHypeDescription != null),
        assert(totalAmount != null),
        assert(soldAmount != null),
        assert(images != null),
        assert(catagories != null);

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final String productHypeDescription;
  @override
  final int totalAmount;
  @override
  final int soldAmount;
  @override
  final List<ImageItemDto> images;
  @override
  final List<CatagoryItemDto> catagories;

  @override
  String toString() {
    return 'ProductDto(id: $id, productName: $productName, productDescription: $productDescription, productHypeDescription: $productHypeDescription, totalAmount: $totalAmount, soldAmount: $soldAmount, images: $images, catagories: $catagories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.catagories, catagories) ||
                const DeepCollectionEquality()
                    .equals(other.catagories, catagories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productHypeDescription) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(soldAmount) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(catagories);

  @override
  _$_ProductDto copyWith({
    Object id = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object productHypeDescription = freezed,
    Object totalAmount = freezed,
    Object soldAmount = freezed,
    Object images = freezed,
    Object catagories = freezed,
  }) {
    return _$_ProductDto(
      id: id == freezed ? this.id : id as String,
      productName:
          productName == freezed ? this.productName : productName as String,
      productDescription: productDescription == freezed
          ? this.productDescription
          : productDescription as String,
      productHypeDescription: productHypeDescription == freezed
          ? this.productHypeDescription
          : productHypeDescription as String,
      totalAmount:
          totalAmount == freezed ? this.totalAmount : totalAmount as int,
      soldAmount: soldAmount == freezed ? this.soldAmount : soldAmount as int,
      images: images == freezed ? this.images : images as List<ImageItemDto>,
      catagories: catagories == freezed
          ? this.catagories
          : catagories as List<CatagoryItemDto>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDtoToJson(this);
  }
}

abstract class _ProductDto implements ProductDto {
  factory _ProductDto(
      {@JsonKey(ignore: true) String id,
      @required String productName,
      @required String productDescription,
      @required String productHypeDescription,
      @required int totalAmount,
      @required int soldAmount,
      @required List<ImageItemDto> images,
      @required List<CatagoryItemDto> catagories}) = _$_ProductDto;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  String get productHypeDescription;
  @override
  int get totalAmount;
  @override
  int get soldAmount;
  @override
  List<ImageItemDto> get images;
  @override
  List<CatagoryItemDto> get catagories;

  @override
  _ProductDto copyWith(
      {@JsonKey(ignore: true) String id,
      String productName,
      String productDescription,
      String productHypeDescription,
      int totalAmount,
      int soldAmount,
      List<ImageItemDto> images,
      List<CatagoryItemDto> catagories});
}

ImageItemDto _$ImageItemDtoFromJson(Map<String, dynamic> json) {
  return _ImageItemDto.fromJson(json);
}

mixin _$ImageItemDto {
  String get id;
  String get name;
  bool get done;

  ImageItemDto copyWith({String id, String name, bool done});

  Map<String, dynamic> toJson();
}

class _$ImageItemDtoTearOff {
  const _$ImageItemDtoTearOff();

  _ImageItemDto call(
      {@required String id, @required String name, @required bool done}) {
    return _ImageItemDto(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $ImageItemDto = _$ImageItemDtoTearOff();

@JsonSerializable()
class _$_ImageItemDto implements _ImageItemDto {
  const _$_ImageItemDto(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  factory _$_ImageItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'ImageItemDto(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$_ImageItemDto copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_ImageItemDto(
      id: id == freezed ? this.id : id as String,
      name: name == freezed ? this.name : name as String,
      done: done == freezed ? this.done : done as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageItemDtoToJson(this);
  }
}

abstract class _ImageItemDto implements ImageItemDto {
  const factory _ImageItemDto(
      {@required String id,
      @required String name,
      @required bool done}) = _$_ImageItemDto;

  factory _ImageItemDto.fromJson(Map<String, dynamic> json) =
      _$_ImageItemDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get done;

  @override
  _ImageItemDto copyWith({String id, String name, bool done});
}

CatagoryItemDto _$CatagoryItemDtoFromJson(Map<String, dynamic> json) {
  return _CatagoryItemDto.fromJson(json);
}

mixin _$CatagoryItemDto {
  String get id;
  String get name;
  bool get done;

  CatagoryItemDto copyWith({String id, String name, bool done});

  Map<String, dynamic> toJson();
}

class _$CatagoryItemDtoTearOff {
  const _$CatagoryItemDtoTearOff();

  _CatagoryItemDto call(
      {@required String id, @required String name, @required bool done}) {
    return _CatagoryItemDto(
      id: id,
      name: name,
      done: done,
    );
  }
}

const $CatagoryItemDto = _$CatagoryItemDtoTearOff();

@JsonSerializable()
class _$_CatagoryItemDto implements _CatagoryItemDto {
  const _$_CatagoryItemDto(
      {@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  factory _$_CatagoryItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CatagoryItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'CatagoryItemDto(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoryItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$_CatagoryItemDto copyWith({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _$_CatagoryItemDto(
      id: id == freezed ? this.id : id as String,
      name: name == freezed ? this.name : name as String,
      done: done == freezed ? this.done : done as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatagoryItemDtoToJson(this);
  }
}

abstract class _CatagoryItemDto implements CatagoryItemDto {
  const factory _CatagoryItemDto(
      {@required String id,
      @required String name,
      @required bool done}) = _$_CatagoryItemDto;

  factory _CatagoryItemDto.fromJson(Map<String, dynamic> json) =
      _$_CatagoryItemDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get done;

  @override
  _CatagoryItemDto copyWith({String id, String name, bool done});
}
