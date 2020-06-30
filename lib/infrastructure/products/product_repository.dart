import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/infrastructure/core/firestore_helpers.dart';
import 'package:finished_notes_firebase_ddd_course/infrastructure/products/product_dtos.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:kt_dart/collection.dart';

@prod
@lazySingleton
@RegisterAs(IProductRepository)
class ProductRepository implements IProductRepository {
  final Firestore _firestore;
  // TODO: create FirebaseStorage helpers
  final FirebaseStorage _firebaseStorage;
  final _picker = ImagePicker();

  ProductRepository(this._firestore, this._firebaseStorage);

  @override
  Future<Either<ProductFailure, Unit>> create(Product product) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> delete(Product product) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchAll() async* {
    yield* _firestore
        .collection('products')
        .orderBy('TotalAmount')
        .limit(7)
        .snapshots()
        .map((snapshot) => right<ProductFailure, KtList<Product>>(snapshot
            .documents
            .map((doc) => ProductDto.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
          return left(const ProductFailure.unexpected());
        });
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchUncompleted() async* {
    yield* _firestore
        .collection('products').startAfter(values)
    throw UnimplementedError();
  }

  @override
  Stream<Either<CatagoryFailure, KtList<CatagoryItem>>> watchAllCatagories() {
    // TODO: implement watchAllCatagories
    throw UnimplementedError();
  }

  @override
  Stream<Either<CatagoryFailure, KtList<CatagoryItem>>>
      watchUncompletedCatagories() {
    // TODO: implement watchUncompletedCatagories
    throw UnimplementedError();
  }

  @override
  Future<Either<ImageFailure, Unit>> createImage(ImageItem imageItem) {
    // TODO: implement createImage
    throw UnimplementedError();
  }

  @override
  Future<Either<ImageFailure, KtList<ImageItem>>> getImages(
      KtList<ImageUrl> imageUrl) {
    // TODO: implement getImages
    throw UnimplementedError();
  }

  @override
  Future<Either<ImageFailure, KtList<ImageItem>>> pickImage() async {
    final PickedFile pickedFile =
        await _picker.getImage(source: ImageSource.gallery);
    //final File file = File(pickedFile.path); // this casts the pickedfile to type file
    final File cropredFile = await ImageCropper.cropImage(
      sourcePath: pickedFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 16.0, ratioY: 9.0),
      androidUiSettings: const AndroidUiSettings(
        toolbarTitle: 'Crop the image',
      ),
    );
    throw UnimplementedError();
  }
}
