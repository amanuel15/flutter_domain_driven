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
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final Firestore _firestore;
  // TODO: create FirebaseStorage helpers
  final FirebaseStorage _firebaseStorage;
  final _picker = ImagePicker();
  DocumentSnapshot lastDoc;

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
  Future<Either<ProductFailure, KtList<Product>>> watchAll() {
    return _firestore
        .collection('products')
        .orderBy('TotalAmount')
        .limit(12)
        .getDocuments()
        .then((snapshot) {
      lastDoc = snapshot.documents.last;
      // TODO: make sure firestore data is verifiable and check mapping
      return right<ProductFailure, KtList<Product>>(snapshot.documents
          .map((doc) => ProductDto.fromFirestore(doc).toDomain())
          .toImmutableList());
    }).catchError((e) {
      print('error');
      return left(const ProductFailure.unexpected());
    });
  }

  @override
  Future<Either<ProductFailure, KtList<Product>>> watchUncompleted() {
    print('the last reference doc is: ${lastDoc.data}');
    return _firestore
        .collection('products')
        .orderBy('TotalAmount')
        .startAfter([lastDoc.data['TotalAmount']])
        .limit(10)
        .getDocuments()
        .then((snapshot) {
          //print(snapshot.documents);
          lastDoc = snapshot.documents.last;
          //print('the new last doc: ${lastDoc.data}');
          return right<ProductFailure, KtList<Product>>(snapshot.documents
              .map((doc) => ProductDto.fromFirestore(doc).toDomain())
              .toImmutableList());
        })
        .catchError((e) {
          return left(const ProductFailure.unexpected());
        });
  }

  @override
  Future<Either<CatagoryFailure, KtList<CatagoryItem>>>
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
    final File croppedFile = await ImageCropper.cropImage(
      sourcePath: pickedFile.path,
      aspectRatio: const CropAspectRatio(ratioX: 16.0, ratioY: 9.0),
      androidUiSettings: const AndroidUiSettings(
        toolbarTitle: 'Crop the image',
      ),
    );
    throw UnimplementedError();
  }

  @override
  Future<Either<CatagoryFailure, KtList<CatagoryName>>> watchAllCatagories(
      {String path = 'Catagories'}) {
    return _firestore.collection(path).getDocuments().then((snapshot) {
      return right<CatagoryFailure, KtList<CatagoryName>>(snapshot.documents
          .map((doc) =>
              CatagoryNameDto.fromJson({"name": doc.documentID}).toDomain())
          .toImmutableList());
    }).catchError((e) {
      return left(const CatagoryFailure.unexpected());
    });
  }
}
