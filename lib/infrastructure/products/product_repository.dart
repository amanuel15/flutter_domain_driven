import 'dart:io';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/infrastructure/core/firestore_helpers.dart';
import 'package:finished_notes_firebase_ddd_course/infrastructure/products/product_dtos.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final Firestore _firestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;
  final _picker = ImagePicker();
  final CloudFunctions _cloudFunctions;
  DocumentSnapshot lastDoc;
  String documentPathForImages;
  bool imagesPathToVendor = false;

  ProductRepository(this._firestore, this._firebaseStorage, this._firebaseAuth,
      this._cloudFunctions);

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
    return _firestore
        .collection('products')
        .orderBy('TotalAmount')
        .startAfter([lastDoc.data['TotalAmount']])
        .limit(10)
        .getDocuments()
        .then((snapshot) {
          return right<ProductFailure, KtList<Product>>(snapshot.documents
              .map((doc) => ProductDto.fromFirestore(doc).toDomain())
              .toImmutableList());
        })
        .catchError((e) {
          return left(const ProductFailure.unexpected());
        });
  }

  @override
  Future<Either<ImageFailure, Unit>> createImage(ImageItem imageItem) {
    // TODO: implement createImage
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
      {List<String> path = const []}) {
    if (path.length == 0) {
      print('in 0 $path');
      return _firestore
          .collection('Catagories')
          .getDocuments()
          .then((snapshot) {
        return right<CatagoryFailure, KtList<CatagoryName>>(snapshot.documents
            .map((doc) =>
                CatagoryNameDto.fromJson({"name": doc.documentID}).toDomain())
            .toImmutableList());
      }).catchError((e) {
        return left(const CatagoryFailure.unexpected());
      });
    } else if (path.length == 1) {
      print('in 1 $path');
      return _firestore
          .collection('Catagories/${path[0]}/subCatagory')
          .getDocuments()
          .then((snapshot) {
        return right<CatagoryFailure, KtList<CatagoryName>>(snapshot.documents
            .map((doc) =>
                CatagoryNameDto.fromJson({"name": doc.documentID}).toDomain())
            .toImmutableList());
      }).catchError((e) {
        return left(const CatagoryFailure.unexpected());
      });
    } else {
      print('in 2 $path');
      return _firestore
          .collection(
              'Catagories/${path[0]}/subCatagory/${path[1]}/subSubCatagory')
          .getDocuments()
          .then((snapshot) {
        return right<CatagoryFailure, KtList<CatagoryName>>(snapshot.documents
            .map((doc) =>
                CatagoryNameDto.fromJson({"name": doc.documentID}).toDomain())
            .toImmutableList());
      }).catchError((e) {
        return left(const CatagoryFailure.unexpected());
      });
    }
  }

  @override
  KtList<ImageProperties> getImages(KtList<ImageItemPrimitive> imageUrl) {
    return imageUrl
        .asList()
        .map((url) => ImageProperties.empty().copyWith(downloadUrl: url.name))
        .toImmutableList();
  }

  @override
  Future<Either<ImageFailure, ImageProperties>> uploadImage(
      ImageProperties imageProperties) async {
    if (documentPathForImages == null || !imagesPathToVendor) {
      await createDocumentPathForImages();
      if (documentPathForImages == null || !imagesPathToVendor) {
        print("error is here $documentPathForImages  $imagesPathToVendor");
        return left(const ImageFailure.uploadFailed());
      }
    }

    imageProperties = imageProperties.copyWith(path: "$documentPathForImages}");
    final StorageReference storageReference = _firebaseStorage.ref().child(
        'products/${imageProperties.path}/${imageProperties.image.absolute.path.split('/').last}');
    await _firebaseStorage.setMaxUploadRetryTimeMillis(3000);
    String downloadUrl;
    final StorageUploadTask uploadTask =
        storageReference.putFile(imageProperties.image);

    await uploadTask.onComplete;
    await storageReference
        .getDownloadURL()
        .then((url) => {downloadUrl = url.toString()});

    print("upload has completed with url!!!: $downloadUrl");
    if (uploadTask.isSuccessful) {
      return right(ImageProperties(
          image: imageProperties.image,
          downloadUrl: downloadUrl,
          path: imageProperties.path,
          rawImage: imageProperties.rawImage));
    } else {
      return left(const ImageFailure.uploadFailed());
    }
  }

  Future<void> createDocumentPathForImages() async {
    if (documentPathForImages == null) {
      final user = await _firebaseAuth.currentUser();
      if (user != null) {
        documentPathForImages =
            "${user.uid.toString()}/${DateTime.now().millisecondsSinceEpoch.toString()}";
        await writeImagesPathToVendorDocument(documentPathForImages);
      }
    } else if (!imagesPathToVendor) {
      await writeImagesPathToVendorDocument(documentPathForImages);
    }
  }

  Future<void> writeImagesPathToVendorDocument(String documentPath) async {
    final HttpsCallable callable = _cloudFunctions.getHttpsCallable(
        functionName: "writeImagesPathToVendorDocument");
    final user = await FirebaseAuth.instance.currentUser();
    final token = await user.getIdToken();
    try {
      final response = await callable
          .call({"token": token.token, "pathOfImagesDocument": documentPath});
      if (response.data['Complete'] != null) {
        imagesPathToVendor = true;
      } else {
        imagesPathToVendor = false;
      }
    } catch (e) {
      print("writeImagesPathToVendorDocument ${e.toString()}");
      imagesPathToVendor = false;
    }
  }

  @override
  Future<Either<ImageFailure, ImageProperties>> deleteImage(
      ImageProperties imageProperties) async {
    final StorageReference storageReference = _firebaseStorage.ref().child(
        'products/${imageProperties.path}/${imageProperties.image.absolute.path.split('/').last}');
//    print("delteing ${storageReference.path}");

//    try {
//      final downloadUrl = await storageReference.getDownloadURL();
//
//      print(" working download URL ${downloadUrl.toString()}");
//    } catch (e) {
//      if (e.message.toString() == 'Object does not exist at location.') {
//        print('Object does not exist at location');
//        return left(const ImageFailure.imageDoesNotExist());
//      }
//    }
    try {
      await storageReference.delete();
      return right<ImageFailure, ImageProperties>(imageProperties);
    } catch (error) {
      if (error.message.toString() == "Object does not exist at location.") {
        return left(const ImageFailure.unexpected());
      } else {
        return left(const ImageFailure.deleteFailed());
      }
    }
  }
}
