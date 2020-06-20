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
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

@prod
@lazySingleton
@RegisterAs(IProductRepository)
class ProductRepository implements IProductRepository {
  final Firestore _firestore;
  // TODO: create FirebaseStorage helpers
  final FirebaseStorage _firebaseStorage;

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
  Stream<Either<ProductFailure, KtList<Product>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<ProductFailure, KtList<Product>>> watchUncompleted() {
    // TODO: implement watchUncompleted
    throw UnimplementedError();
  }

  @override
  Stream<Either<CatagoryFailure, KtList<CatagoryItem>>> watchAllCatagories() {
    // TODO: implement watchAllCatagories
    throw UnimplementedError();
  }

  @override
  Stream<Either<CatagoryFailure, KtList<CatagoryItem>>> watchUncompletedCatagories() {
    // TODO: implement watchUncompletedCatagories
    throw UnimplementedError();
  }

  @override
  Future<Either<ImageFailure, Unit>> createImage;

  @override
  Future<Either<ImageFailure, KtList<ImageItem>>> getImages;
}