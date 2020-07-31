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
  String get hypeDescription;
  int get totalAmount;
  int get soldAmount;
  List<ImageUrlDto> get images;
  List<CatagoryNameDto> get catagories;

  ProductDto copyWith(
      {@JsonKey(ignore: true) String id,
      String productName,
      String productDescription,
      String hypeDescription,
      int totalAmount,
      int soldAmount,
      List<ImageUrlDto> images,
      List<CatagoryNameDto> catagories});

  Map<String, dynamic> toJson();
}

class _$ProductDtoTearOff {
  const _$ProductDtoTearOff();

  _ProductDto call(
      {@JsonKey(ignore: true) String id,
      @required String productName,
      @required String productDescription,
      @required String hypeDescription,
      @required int totalAmount,
      @required int soldAmount,
      @required List<ImageUrlDto> images,
      @required List<CatagoryNameDto> catagories}) {
    return _ProductDto(
      id: id,
      productName: productName,
      productDescription: productDescription,
      hypeDescription: hypeDescription,
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
      @required this.hypeDescription,
      @required this.totalAmount,
      @required this.soldAmount,
      @required this.images,
      @required this.catagories})
      : assert(productName != null),
        assert(productDescription != null),
        assert(hypeDescription != null),
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
  final String hypeDescription;
  @override
  final int totalAmount;
  @override
  final int soldAmount;
  @override
  final List<ImageUrlDto> images;
  @override
  final List<CatagoryNameDto> catagories;

  @override
  String toString() {
    return 'ProductDto(id: $id, productName: $productName, productDescription: $productDescription, hypeDescription: $hypeDescription, totalAmount: $totalAmount, soldAmount: $soldAmount, images: $images, catagories: $catagories)';
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
      const DeepCollectionEquality().hash(hypeDescription) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(soldAmount) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(catagories);

  @override
  _$_ProductDto copyWith({
    Object id = freezed,
    Object productName = freezed,
    Object productDescription = freezed,
    Object hypeDescription = freezed,
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
      hypeDescription: hypeDescription == freezed
          ? this.hypeDescription
          : hypeDescription as String,
      totalAmount:
          totalAmount == freezed ? this.totalAmount : totalAmount as int,
      soldAmount: soldAmount == freezed ? this.soldAmount : soldAmount as int,
      images: images == freezed ? this.images : images as List<ImageUrlDto>,
      catagories: catagories == freezed
          ? this.catagories
          : catagories as List<CatagoryNameDto>,
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
      @required String hypeDescription,
      @required int totalAmount,
      @required int soldAmount,
      @required List<ImageUrlDto> images,
      @required List<CatagoryNameDto> catagories}) = _$_ProductDto;

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
  String get hypeDescription;
  @override
  int get totalAmount;
  @override
  int get soldAmount;
  @override
  List<ImageUrlDto> get images;
  @override
  List<CatagoryNameDto> get catagories;

  @override
  _ProductDto copyWith(
      {@JsonKey(ignore: true) String id,
      String productName,
      String productDescription,
      String hypeDescription,
      int totalAmount,
      int soldAmount,
      List<ImageUrlDto> images,
      List<CatagoryNameDto> catagories});
}

ImageUrlDto _$ImageUrlDtoFromJson(Map<String, dynamic> json) {
  return _ImageUrlDto.fromJson(json);
}

mixin _$ImageUrlDto {
  String get name;

  ImageUrlDto copyWith({String name});

  Map<String, dynamic> toJson();
}

class _$ImageUrlDtoTearOff {
  const _$ImageUrlDtoTearOff();

  _ImageUrlDto call({@required String name}) {
    return _ImageUrlDto(
      name: name,
    );
  }
}

const $ImageUrlDto = _$ImageUrlDtoTearOff();

@JsonSerializable()
class _$_ImageUrlDto implements _ImageUrlDto {
  const _$_ImageUrlDto({@required this.name}) : assert(name != null);

  factory _$_ImageUrlDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ImageUrlDtoFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ImageUrlDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageUrlDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$_ImageUrlDto copyWith({
    Object name = freezed,
  }) {
    return _$_ImageUrlDto(
      name: name == freezed ? this.name : name as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImageUrlDtoToJson(this);
  }
}

abstract class _ImageUrlDto implements ImageUrlDto {
  const factory _ImageUrlDto({@required String name}) = _$_ImageUrlDto;

  factory _ImageUrlDto.fromJson(Map<String, dynamic> json) =
      _$_ImageUrlDto.fromJson;

  @override
  String get name;

  @override
  _ImageUrlDto copyWith({String name});
}

CatagoryNameDto _$CatagoryNameDtoFromJson(Map<String, dynamic> json) {
  return _CatagoryNameDto.fromJson(json);
}

mixin _$CatagoryNameDto {
  String get name;

  CatagoryNameDto copyWith({String name});

  Map<String, dynamic> toJson();
}

class _$CatagoryNameDtoTearOff {
  const _$CatagoryNameDtoTearOff();

  _CatagoryNameDto call({@required String name}) {
    return _CatagoryNameDto(
      name: name,
    );
  }
}

const $CatagoryNameDto = _$CatagoryNameDtoTearOff();

@JsonSerializable()
class _$_CatagoryNameDto implements _CatagoryNameDto {
  const _$_CatagoryNameDto({@required this.name}) : assert(name != null);

  factory _$_CatagoryNameDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CatagoryNameDtoFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CatagoryNameDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoryNameDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$_CatagoryNameDto copyWith({
    Object name = freezed,
  }) {
    return _$_CatagoryNameDto(
      name: name == freezed ? this.name : name as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatagoryNameDtoToJson(this);
  }
}

abstract class _CatagoryNameDto implements CatagoryNameDto {
  const factory _CatagoryNameDto({@required String name}) = _$_CatagoryNameDto;

  factory _CatagoryNameDto.fromJson(Map<String, dynamic> json) =
      _$_CatagoryNameDto.fromJson;

  @override
  String get name;

  @override
  _CatagoryNameDto copyWith({String name});
}
