// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$_$_ProductDtoFromJson(Map<String, dynamic> json) {
  return _$_ProductDto(
    productName: json['productName'] as String,
    productDescription: json['productDescription'] as String,
    productHypeDescription: json['productHypeDescription'] as String,
    totalAmount: json['totalAmount'] as int,
    soldAmount: json['soldAmount'] as int,
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : ImageItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    catagories: (json['catagories'] as List)
        ?.map((e) => e == null
            ? null
            : CatagoryItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productHypeDescription': instance.productHypeDescription,
      'totalAmount': instance.totalAmount,
      'soldAmount': instance.soldAmount,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
      'catagories': instance.catagories?.map((e) => e?.toJson())?.toList(),
    };

_$_ImageItemDto _$_$_ImageItemDtoFromJson(Map<String, dynamic> json) {
  return _$_ImageItemDto(
    id: json['id'] as String,
    name: json['name'] as String,
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$_$_ImageItemDtoToJson(_$_ImageItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };

_$_CatagoryItemDto _$_$_CatagoryItemDtoFromJson(Map<String, dynamic> json) {
  return _$_CatagoryItemDto(
    id: json['id'] as String,
    name: json['name'] as String,
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$_$_CatagoryItemDtoToJson(_$_CatagoryItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };
