// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$_$_ProductDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDto(
    productName: json['productName'] as String,
    productDescription: json['productDescription'] as String,
    hypeDescription: json['hypeDescription'] as String,
    totalAmount: json['totalAmount'] as int,
    soldAmount: json['soldAmount'] as int,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : ImageUrlDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    catagories: (json['catagories'] as List)
        ?.map((e) => e == null
            ? null
            : CatagoryNameDto.fromJson((e as Map<String, dynamic>)?.map(
                (k, e) => MapEntry(k, e as String),
              )))
        ?.toList(),
    subProducts: (json['subProducts'] as List)
        ?.map((e) => e == null
            ? null
            : SubProductDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'hypeDescription': instance.hypeDescription,
      'totalAmount': instance.totalAmount,
      'soldAmount': instance.soldAmount,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'catagories': instance.catagories?.map((e) => e?.toJson())?.toList(),
      'subProducts': instance.subProducts?.map((e) => e?.toJson())?.toList(),
    };

_$_SubProductDto _$_$_SubProductDtoFromJson(Map<String, dynamic> json) {
  return _$_SubProductDto(
    name: json['name'] as String,
    amount: json['amount'] as int,
    price: json['price'] as int,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_SubProductDtoToJson(_$_SubProductDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };

_$_ImageUrlDto _$_$_ImageUrlDtoFromJson(Map<String, dynamic> json) {
  return _$_ImageUrlDto(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_ImageUrlDtoToJson(_$_ImageUrlDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_CatagoryNameDto _$_$_CatagoryNameDtoFromJson(Map<String, dynamic> json) {
  return _$_CatagoryNameDto(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_CatagoryNameDtoToJson(_$_CatagoryNameDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
