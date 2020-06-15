import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finished_notes_firebase_ddd_course/domain/core/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

@freezed
abstract class ProductDto with _$ProductDto {
  factory ProductDto({
    @JsonKey(ignore: true) String id,
    @required String productName,
    @required String productDescription,
    @required String productHypeDescription,
    @required int totalAmount,
    @required int soldAmount,
    @required List<ImageItemDto> images,
    @required List<CatagoryItemDto> catagories,
  }) = _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      productName: product.productName.getOrCrash(),
      productDescription: product.productDescription.getOrCrash(),
      productHypeDescription: product.productHypeDescription.getOrCrash(),
      totalAmount: product.totalAmount.getOrCrash(),
      soldAmount: product.soldAmount.getOrCrash(),
      images: product.images
          .getOrCrash()
          .mapIndexed(
            (index, imageItem) => ImageItemDto.fromDomain(imageItem),
          )
          .asList(),
      catagories: product.catagories
          .getOrCrash()
          .mapIndexed(
            (index, catagoryItem) => CatagoryItemDto.fromDomain(catagoryItem),
          )
          .asList(),
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromFirestore(DocumentSnapshot doc) {
    return ProductDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension ProductDtoX on ProductDto {
  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id),
      productName: ProductName(productName),
      productDescription: ProductDescription(productDescription),
      productHypeDescription: ProductHypeDescription(productHypeDescription),
      totalAmount: TotalAmount(totalAmount),
      soldAmount: SoldAmount(soldAmount),
      images: ListImage(images.map((dto) => dto.toDomain()).toImmutableList()),
      catagories: ListCatagories(catagories.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }
}

@freezed
abstract class ImageItemDto with _$ImageItemDto {
  const factory ImageItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _ImageItemDto;

  factory ImageItemDto.fromDomain(ImageItem imageItem) {
    return ImageItemDto(
      id: imageItem.id.getOrCrash(),
      name: imageItem.name.getOrCrash(),
      done: imageItem.done,
    );
  }

  factory ImageItemDto.fromJson(Map<String, dynamic> json) =>
      _$ImageItemDtoFromJson(json);
}

extension ImageItemDtoX on ImageItemDto {
  ImageItem toDomain() {
    return ImageItem(
      id: UniqueId.fromUniqueString(id),
      name: ImageUrl(name),
      done: done,
    );
  }
}

@freezed
abstract class CatagoryItemDto with _$CatagoryItemDto {
  const factory CatagoryItemDto({
    @required String id,
    @required String name,
    @required bool done,
  }) = _CatagoryItemDto;

  factory CatagoryItemDto.fromDomain(CatagoryItem catagoryItem) {
    return CatagoryItemDto(
      id: catagoryItem.id.getOrCrash(),
      name: catagoryItem.name.getOrCrash(),
      done: catagoryItem.done,
    );
  }

  factory CatagoryItemDto.fromJson(Map<String, dynamic> json) =>
      _$CatagoryItemDtoFromJson(json);
}

extension CatagoryItemDtoX on CatagoryItemDto {
  CatagoryItem toDomain() {
    return CatagoryItem(
      id: UniqueId.fromUniqueString(id),
      name: CatagoryName(name),
      done: done,
    );
  }
}
