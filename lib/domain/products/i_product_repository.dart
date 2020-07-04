import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:kt_dart/collection.dart';

abstract class IProductRepository {
  //functions for products
  // TODO: configure input parameters for [WathAll, watchUncomplete, getImages, WAtchUncompleteCatagories]
  Future<Either<ProductFailure, KtList<Product>>> watchAll();
  Future<Either<ProductFailure, KtList<Product>>> watchUncompleted();
  Future<Either<ProductFailure, Unit>> create(Product product);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);

  //functions for catagories
  Future<Either<CatagoryFailure, KtList<CatagoryItem>>> watchAllCatagories();
  Future<Either<CatagoryFailure, KtList<CatagoryItem>>> watchUncompletedCatagories();

  //functions for images
  Future<Either<ImageFailure, KtList<ImageItem>>> getImages(KtList<ImageUrl> imageUrl);
  Future<Either<ImageFailure, Unit>> createImage(ImageItem imageItem);
  //fuctions for getting image from local storage
  Future<Either<ImageFailure, KtList<ImageItem>>> pickImage();

}
