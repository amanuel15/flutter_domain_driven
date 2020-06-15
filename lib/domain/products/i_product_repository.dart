import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IProductRepository {
  Stream<Either<ProductFailure, KtList<Product>>> watchAll();
  Stream<Either<ProductFailure, KtList<Product>>> watchUncompleted();
  Future<Either<ProductFailure, Unit>> create(Product product);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
}
