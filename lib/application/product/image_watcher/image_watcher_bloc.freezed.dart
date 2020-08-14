// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ImagewatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(KtList<ImageItemPrimitive> imageUrls),
    @required
        Result imageDeleted(ImageProperties imageProperties, String imageType),
    @required
        Result imageUploaded(ImageProperties imageProperties, String imageType),
    @required Result addImage(File image, String imagePath, String imageType),
    @required
        Result imagesRecived(
            Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(KtList<ImageItemPrimitive> imageUrls),
    Result imageDeleted(ImageProperties imageProperties, String imageType),
    Result imageUploaded(ImageProperties imageProperties, String imageType),
    Result addImage(File image, String imagePath, String imageType),
    Result imagesRecived(
        Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result imageDeleted(_ImageDeleted value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result addImage(_AddImage value),
    @required Result imagesRecived(_ImagesRecived value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result imageDeleted(_ImageDeleted value),
    Result imageUploaded(_ImageUploaded value),
    Result addImage(_AddImage value),
    Result imagesRecived(_ImagesRecived value),
    @required Result orElse(),
  });
}

class _$ImagewatcherEventTearOff {
  const _$ImagewatcherEventTearOff();

  _Started started(KtList<ImageItemPrimitive> imageUrls) {
    return _Started(
      imageUrls,
    );
  }

  _ImageDeleted imageDeleted(
      ImageProperties imageProperties, String imageType) {
    return _ImageDeleted(
      imageProperties,
      imageType,
    );
  }

  _ImageUploaded imageUploaded(
      ImageProperties imageProperties, String imageType) {
    return _ImageUploaded(
      imageProperties,
      imageType,
    );
  }

  _AddImage addImage({File image, String imagePath, String imageType}) {
    return _AddImage(
      image: image,
      imagePath: imagePath,
      imageType: imageType,
    );
  }

  _ImagesRecived imagesRecived(
      Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages) {
    return _ImagesRecived(
      failureOrimages,
    );
  }
}

const $ImagewatcherEvent = _$ImagewatcherEventTearOff();

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started(this.imageUrls) : assert(imageUrls != null);

  @override
  final KtList<ImageItemPrimitive> imageUrls;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherEvent.started(imageUrls: $imageUrls)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherEvent.started'))
      ..add(DiagnosticsProperty('imageUrls', imageUrls));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.imageUrls, imageUrls) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrls, imageUrls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageUrls);

  @override
  _$_Started copyWith({
    Object imageUrls = freezed,
  }) {
    return _$_Started(
      imageUrls == freezed
          ? this.imageUrls
          : imageUrls as KtList<ImageItemPrimitive>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(KtList<ImageItemPrimitive> imageUrls),
    @required
        Result imageDeleted(ImageProperties imageProperties, String imageType),
    @required
        Result imageUploaded(ImageProperties imageProperties, String imageType),
    @required Result addImage(File image, String imagePath, String imageType),
    @required
        Result imagesRecived(
            Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return started(imageUrls);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(KtList<ImageItemPrimitive> imageUrls),
    Result imageDeleted(ImageProperties imageProperties, String imageType),
    Result imageUploaded(ImageProperties imageProperties, String imageType),
    Result addImage(File image, String imagePath, String imageType),
    Result imagesRecived(
        Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(imageUrls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result imageDeleted(_ImageDeleted value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result addImage(_AddImage value),
    @required Result imagesRecived(_ImagesRecived value),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result imageDeleted(_ImageDeleted value),
    Result imageUploaded(_ImageUploaded value),
    Result addImage(_AddImage value),
    Result imagesRecived(_ImagesRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ImagewatcherEvent {
  const factory _Started(KtList<ImageItemPrimitive> imageUrls) = _$_Started;

  KtList<ImageItemPrimitive> get imageUrls;

  _Started copyWith({KtList<ImageItemPrimitive> imageUrls});
}

class _$_ImageDeleted with DiagnosticableTreeMixin implements _ImageDeleted {
  const _$_ImageDeleted(this.imageProperties, this.imageType)
      : assert(imageProperties != null),
        assert(imageType != null);

  @override
  final ImageProperties imageProperties;
  @override
  final String imageType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherEvent.imageDeleted(imageProperties: $imageProperties, imageType: $imageType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherEvent.imageDeleted'))
      ..add(DiagnosticsProperty('imageProperties', imageProperties))
      ..add(DiagnosticsProperty('imageType', imageType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageDeleted &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties) ^
      const DeepCollectionEquality().hash(imageType);

  @override
  _$_ImageDeleted copyWith({
    Object imageProperties = freezed,
    Object imageType = freezed,
  }) {
    return _$_ImageDeleted(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as ImageProperties,
      imageType == freezed ? this.imageType : imageType as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(KtList<ImageItemPrimitive> imageUrls),
    @required
        Result imageDeleted(ImageProperties imageProperties, String imageType),
    @required
        Result imageUploaded(ImageProperties imageProperties, String imageType),
    @required Result addImage(File image, String imagePath, String imageType),
    @required
        Result imagesRecived(
            Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return imageDeleted(imageProperties, imageType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(KtList<ImageItemPrimitive> imageUrls),
    Result imageDeleted(ImageProperties imageProperties, String imageType),
    Result imageUploaded(ImageProperties imageProperties, String imageType),
    Result addImage(File image, String imagePath, String imageType),
    Result imagesRecived(
        Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(imageProperties, imageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result imageDeleted(_ImageDeleted value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result addImage(_AddImage value),
    @required Result imagesRecived(_ImagesRecived value),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result imageDeleted(_ImageDeleted value),
    Result imageUploaded(_ImageUploaded value),
    Result addImage(_AddImage value),
    Result imagesRecived(_ImagesRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements ImagewatcherEvent {
  const factory _ImageDeleted(
      ImageProperties imageProperties, String imageType) = _$_ImageDeleted;

  ImageProperties get imageProperties;
  String get imageType;

  _ImageDeleted copyWith({ImageProperties imageProperties, String imageType});
}

class _$_ImageUploaded with DiagnosticableTreeMixin implements _ImageUploaded {
  const _$_ImageUploaded(this.imageProperties, this.imageType)
      : assert(imageProperties != null),
        assert(imageType != null);

  @override
  final ImageProperties imageProperties;
  @override
  final String imageType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherEvent.imageUploaded(imageProperties: $imageProperties, imageType: $imageType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherEvent.imageUploaded'))
      ..add(DiagnosticsProperty('imageProperties', imageProperties))
      ..add(DiagnosticsProperty('imageType', imageType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageUploaded &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties) ^
      const DeepCollectionEquality().hash(imageType);

  @override
  _$_ImageUploaded copyWith({
    Object imageProperties = freezed,
    Object imageType = freezed,
  }) {
    return _$_ImageUploaded(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as ImageProperties,
      imageType == freezed ? this.imageType : imageType as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(KtList<ImageItemPrimitive> imageUrls),
    @required
        Result imageDeleted(ImageProperties imageProperties, String imageType),
    @required
        Result imageUploaded(ImageProperties imageProperties, String imageType),
    @required Result addImage(File image, String imagePath, String imageType),
    @required
        Result imagesRecived(
            Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return imageUploaded(imageProperties, imageType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(KtList<ImageItemPrimitive> imageUrls),
    Result imageDeleted(ImageProperties imageProperties, String imageType),
    Result imageUploaded(ImageProperties imageProperties, String imageType),
    Result addImage(File image, String imagePath, String imageType),
    Result imagesRecived(
        Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageUploaded != null) {
      return imageUploaded(imageProperties, imageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result imageDeleted(_ImageDeleted value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result addImage(_AddImage value),
    @required Result imagesRecived(_ImagesRecived value),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return imageUploaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result imageDeleted(_ImageDeleted value),
    Result imageUploaded(_ImageUploaded value),
    Result addImage(_AddImage value),
    Result imagesRecived(_ImagesRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageUploaded != null) {
      return imageUploaded(this);
    }
    return orElse();
  }
}

abstract class _ImageUploaded implements ImagewatcherEvent {
  const factory _ImageUploaded(
      ImageProperties imageProperties, String imageType) = _$_ImageUploaded;

  ImageProperties get imageProperties;
  String get imageType;

  _ImageUploaded copyWith({ImageProperties imageProperties, String imageType});
}

class _$_AddImage with DiagnosticableTreeMixin implements _AddImage {
  const _$_AddImage({this.image, this.imagePath, this.imageType});

  @override
  final File image;
  @override
  final String imagePath;
  @override
  final String imageType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherEvent.addImage(image: $image, imagePath: $imagePath, imageType: $imageType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherEvent.addImage'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('imageType', imageType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddImage &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(imageType);

  @override
  _$_AddImage copyWith({
    Object image = freezed,
    Object imagePath = freezed,
    Object imageType = freezed,
  }) {
    return _$_AddImage(
      image: image == freezed ? this.image : image as File,
      imagePath: imagePath == freezed ? this.imagePath : imagePath as String,
      imageType: imageType == freezed ? this.imageType : imageType as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(KtList<ImageItemPrimitive> imageUrls),
    @required
        Result imageDeleted(ImageProperties imageProperties, String imageType),
    @required
        Result imageUploaded(ImageProperties imageProperties, String imageType),
    @required Result addImage(File image, String imagePath, String imageType),
    @required
        Result imagesRecived(
            Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return addImage(image, imagePath, imageType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(KtList<ImageItemPrimitive> imageUrls),
    Result imageDeleted(ImageProperties imageProperties, String imageType),
    Result imageUploaded(ImageProperties imageProperties, String imageType),
    Result addImage(File image, String imagePath, String imageType),
    Result imagesRecived(
        Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addImage != null) {
      return addImage(image, imagePath, imageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result imageDeleted(_ImageDeleted value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result addImage(_AddImage value),
    @required Result imagesRecived(_ImagesRecived value),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result imageDeleted(_ImageDeleted value),
    Result imageUploaded(_ImageUploaded value),
    Result addImage(_AddImage value),
    Result imagesRecived(_ImagesRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class _AddImage implements ImagewatcherEvent {
  const factory _AddImage({File image, String imagePath, String imageType}) =
      _$_AddImage;

  File get image;
  String get imagePath;
  String get imageType;

  _AddImage copyWith({File image, String imagePath, String imageType});
}

class _$_ImagesRecived with DiagnosticableTreeMixin implements _ImagesRecived {
  const _$_ImagesRecived(this.failureOrimages)
      : assert(failureOrimages != null);

  @override
  final Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherEvent.imagesRecived(failureOrimages: $failureOrimages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherEvent.imagesRecived'))
      ..add(DiagnosticsProperty('failureOrimages', failureOrimages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesRecived &&
            (identical(other.failureOrimages, failureOrimages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrimages, failureOrimages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrimages);

  @override
  _$_ImagesRecived copyWith({
    Object failureOrimages = freezed,
  }) {
    return _$_ImagesRecived(
      failureOrimages == freezed
          ? this.failureOrimages
          : failureOrimages as Either<ImageFailure, List<ImageItemPrimitive>>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(KtList<ImageItemPrimitive> imageUrls),
    @required
        Result imageDeleted(ImageProperties imageProperties, String imageType),
    @required
        Result imageUploaded(ImageProperties imageProperties, String imageType),
    @required Result addImage(File image, String imagePath, String imageType),
    @required
        Result imagesRecived(
            Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return imagesRecived(failureOrimages);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(KtList<ImageItemPrimitive> imageUrls),
    Result imageDeleted(ImageProperties imageProperties, String imageType),
    Result imageUploaded(ImageProperties imageProperties, String imageType),
    Result addImage(File image, String imagePath, String imageType),
    Result imagesRecived(
        Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesRecived != null) {
      return imagesRecived(failureOrimages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result imageDeleted(_ImageDeleted value),
    @required Result imageUploaded(_ImageUploaded value),
    @required Result addImage(_AddImage value),
    @required Result imagesRecived(_ImagesRecived value),
  }) {
    assert(started != null);
    assert(imageDeleted != null);
    assert(imageUploaded != null);
    assert(addImage != null);
    assert(imagesRecived != null);
    return imagesRecived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result imageDeleted(_ImageDeleted value),
    Result imageUploaded(_ImageUploaded value),
    Result addImage(_AddImage value),
    Result imagesRecived(_ImagesRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesRecived != null) {
      return imagesRecived(this);
    }
    return orElse();
  }
}

abstract class _ImagesRecived implements ImagewatcherEvent {
  const factory _ImagesRecived(
          Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages) =
      _$_ImagesRecived;

  Either<ImageFailure, List<ImageItemPrimitive>> get failureOrimages;

  _ImagesRecived copyWith(
      {Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages});
}

mixin _$ImagewatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

class _$ImagewatcherStateTearOff {
  const _$ImagewatcherStateTearOff();

  Initial inital() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Deleting deleting() {
    return const Deleting();
  }

  UploadedImageResult uploadedImageResult(
      {Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
      String imageType}) {
    return UploadedImageResult(
      imageUploadSuccessFailure: imageUploadSuccessFailure,
      imageType: imageType,
    );
  }

  Uploading uploading() {
    return const Uploading();
  }

  ValidatedImage validatedImage({ProductImage productImage, String imageType}) {
    return ValidatedImage(
      productImage: productImage,
      imageType: imageType,
    );
  }

  SubmitingImage submitingImage() {
    return const SubmitingImage();
  }

  DeleteSuccess deleteSuccess(ImageProperties imageProperties) {
    return DeleteSuccess(
      imageProperties,
    );
  }

  DeleteFailure deleteFailure(ImageFailure imageFailure) {
    return DeleteFailure(
      imageFailure,
    );
  }

  LoadSucess loadSucess(KtList<ImageProperties> imageProperties) {
    return LoadSucess(
      imageProperties,
    );
  }

  LoadFailure loadFailure(ImageFailure imageFailure) {
    return LoadFailure(
      imageFailure,
    );
  }
}

const $ImagewatcherState = _$ImagewatcherStateTearOff();

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.inital()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagewatcherState.inital'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class Initial implements ImagewatcherState {
  const factory Initial() = _$Initial;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagewatcherState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ImagewatcherState {
  const factory Loading() = _$Loading;
}

class _$Deleting with DiagnosticableTreeMixin implements Deleting {
  const _$Deleting();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.deleting()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagewatcherState.deleting'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Deleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return deleting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class Deleting implements ImagewatcherState {
  const factory Deleting() = _$Deleting;
}

class _$UploadedImageResult
    with DiagnosticableTreeMixin
    implements UploadedImageResult {
  const _$UploadedImageResult({this.imageUploadSuccessFailure, this.imageType});

  @override
  final Either<ImageFailure, ImageProperties> imageUploadSuccessFailure;
  @override
  final String imageType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.uploadedImageResult(imageUploadSuccessFailure: $imageUploadSuccessFailure, imageType: $imageType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ImagewatcherState.uploadedImageResult'))
      ..add(DiagnosticsProperty(
          'imageUploadSuccessFailure', imageUploadSuccessFailure))
      ..add(DiagnosticsProperty('imageType', imageType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadedImageResult &&
            (identical(other.imageUploadSuccessFailure,
                    imageUploadSuccessFailure) ||
                const DeepCollectionEquality().equals(
                    other.imageUploadSuccessFailure,
                    imageUploadSuccessFailure)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageUploadSuccessFailure) ^
      const DeepCollectionEquality().hash(imageType);

  @override
  _$UploadedImageResult copyWith({
    Object imageUploadSuccessFailure = freezed,
    Object imageType = freezed,
  }) {
    return _$UploadedImageResult(
      imageUploadSuccessFailure: imageUploadSuccessFailure == freezed
          ? this.imageUploadSuccessFailure
          : imageUploadSuccessFailure as Either<ImageFailure, ImageProperties>,
      imageType: imageType == freezed ? this.imageType : imageType as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return uploadedImageResult(imageUploadSuccessFailure, imageType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadedImageResult != null) {
      return uploadedImageResult(imageUploadSuccessFailure, imageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return uploadedImageResult(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadedImageResult != null) {
      return uploadedImageResult(this);
    }
    return orElse();
  }
}

abstract class UploadedImageResult implements ImagewatcherState {
  const factory UploadedImageResult(
      {Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
      String imageType}) = _$UploadedImageResult;

  Either<ImageFailure, ImageProperties> get imageUploadSuccessFailure;
  String get imageType;

  UploadedImageResult copyWith(
      {Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
      String imageType});
}

class _$Uploading with DiagnosticableTreeMixin implements Uploading {
  const _$Uploading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.uploading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagewatcherState.uploading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Uploading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return uploading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploading != null) {
      return uploading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class Uploading implements ImagewatcherState {
  const factory Uploading() = _$Uploading;
}

class _$ValidatedImage with DiagnosticableTreeMixin implements ValidatedImage {
  const _$ValidatedImage({this.productImage, this.imageType});

  @override
  final ProductImage productImage;
  @override
  final String imageType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.validatedImage(productImage: $productImage, imageType: $imageType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherState.validatedImage'))
      ..add(DiagnosticsProperty('productImage', productImage))
      ..add(DiagnosticsProperty('imageType', imageType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidatedImage &&
            (identical(other.productImage, productImage) ||
                const DeepCollectionEquality()
                    .equals(other.productImage, productImage)) &&
            (identical(other.imageType, imageType) ||
                const DeepCollectionEquality()
                    .equals(other.imageType, imageType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productImage) ^
      const DeepCollectionEquality().hash(imageType);

  @override
  _$ValidatedImage copyWith({
    Object productImage = freezed,
    Object imageType = freezed,
  }) {
    return _$ValidatedImage(
      productImage: productImage == freezed
          ? this.productImage
          : productImage as ProductImage,
      imageType: imageType == freezed ? this.imageType : imageType as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return validatedImage(productImage, imageType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validatedImage != null) {
      return validatedImage(productImage, imageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return validatedImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validatedImage != null) {
      return validatedImage(this);
    }
    return orElse();
  }
}

abstract class ValidatedImage implements ImagewatcherState {
  const factory ValidatedImage({ProductImage productImage, String imageType}) =
      _$ValidatedImage;

  ProductImage get productImage;
  String get imageType;

  ValidatedImage copyWith({ProductImage productImage, String imageType});
}

class _$SubmitingImage with DiagnosticableTreeMixin implements SubmitingImage {
  const _$SubmitingImage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.submitingImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherState.submitingImage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitingImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return submitingImage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitingImage != null) {
      return submitingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return submitingImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitingImage != null) {
      return submitingImage(this);
    }
    return orElse();
  }
}

abstract class SubmitingImage implements ImagewatcherState {
  const factory SubmitingImage() = _$SubmitingImage;
}

class _$DeleteSuccess with DiagnosticableTreeMixin implements DeleteSuccess {
  const _$DeleteSuccess(this.imageProperties) : assert(imageProperties != null);

  @override
  final ImageProperties imageProperties;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.deleteSuccess(imageProperties: $imageProperties)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherState.deleteSuccess'))
      ..add(DiagnosticsProperty('imageProperties', imageProperties));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteSuccess &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties);

  @override
  _$DeleteSuccess copyWith({
    Object imageProperties = freezed,
  }) {
    return _$DeleteSuccess(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as ImageProperties,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return deleteSuccess(imageProperties);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(imageProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements ImagewatcherState {
  const factory DeleteSuccess(ImageProperties imageProperties) =
      _$DeleteSuccess;

  ImageProperties get imageProperties;

  DeleteSuccess copyWith({ImageProperties imageProperties});
}

class _$DeleteFailure with DiagnosticableTreeMixin implements DeleteFailure {
  const _$DeleteFailure(this.imageFailure) : assert(imageFailure != null);

  @override
  final ImageFailure imageFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.deleteFailure(imageFailure: $imageFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherState.deleteFailure'))
      ..add(DiagnosticsProperty('imageFailure', imageFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.imageFailure, imageFailure) ||
                const DeepCollectionEquality()
                    .equals(other.imageFailure, imageFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFailure);

  @override
  _$DeleteFailure copyWith({
    Object imageFailure = freezed,
  }) {
    return _$DeleteFailure(
      imageFailure == freezed
          ? this.imageFailure
          : imageFailure as ImageFailure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return deleteFailure(imageFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(imageFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements ImagewatcherState {
  const factory DeleteFailure(ImageFailure imageFailure) = _$DeleteFailure;

  ImageFailure get imageFailure;

  DeleteFailure copyWith({ImageFailure imageFailure});
}

class _$LoadSucess with DiagnosticableTreeMixin implements LoadSucess {
  const _$LoadSucess(this.imageProperties) : assert(imageProperties != null);

  @override
  final KtList<ImageProperties> imageProperties;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.loadSucess(imageProperties: $imageProperties)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherState.loadSucess'))
      ..add(DiagnosticsProperty('imageProperties', imageProperties));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSucess &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties);

  @override
  _$LoadSucess copyWith({
    Object imageProperties = freezed,
  }) {
    return _$LoadSucess(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as KtList<ImageProperties>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadSucess(imageProperties);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSucess != null) {
      return loadSucess(imageProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadSucess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSucess != null) {
      return loadSucess(this);
    }
    return orElse();
  }
}

abstract class LoadSucess implements ImagewatcherState {
  const factory LoadSucess(KtList<ImageProperties> imageProperties) =
      _$LoadSucess;

  KtList<ImageProperties> get imageProperties;

  LoadSucess copyWith({KtList<ImageProperties> imageProperties});
}

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.imageFailure) : assert(imageFailure != null);

  @override
  final ImageFailure imageFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagewatcherState.loadFailure(imageFailure: $imageFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagewatcherState.loadFailure'))
      ..add(DiagnosticsProperty('imageFailure', imageFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.imageFailure, imageFailure) ||
                const DeepCollectionEquality()
                    .equals(other.imageFailure, imageFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFailure);

  @override
  _$LoadFailure copyWith({
    Object imageFailure = freezed,
  }) {
    return _$LoadFailure(
      imageFailure == freezed
          ? this.imageFailure
          : imageFailure as ImageFailure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result deleting(),
    @required
        Result uploadedImageResult(
            Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
            String imageType),
    @required Result uploading(),
    @required
        Result validatedImage(ProductImage productImage, String imageType),
    @required Result submitingImage(),
    @required Result deleteSuccess(ImageProperties imageProperties),
    @required Result deleteFailure(ImageFailure imageFailure),
    @required Result loadSucess(KtList<ImageProperties> imageProperties),
    @required Result loadFailure(ImageFailure imageFailure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadFailure(imageFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result deleting(),
    Result uploadedImageResult(
        Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
        String imageType),
    Result uploading(),
    Result validatedImage(ProductImage productImage, String imageType),
    Result submitingImage(),
    Result deleteSuccess(ImageProperties imageProperties),
    Result deleteFailure(ImageFailure imageFailure),
    Result loadSucess(KtList<ImageProperties> imageProperties),
    Result loadFailure(ImageFailure imageFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(imageFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(Initial value),
    @required Result loading(Loading value),
    @required Result deleting(Deleting value),
    @required Result uploadedImageResult(UploadedImageResult value),
    @required Result uploading(Uploading value),
    @required Result validatedImage(ValidatedImage value),
    @required Result submitingImage(SubmitingImage value),
    @required Result deleteSuccess(DeleteSuccess value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(deleting != null);
    assert(uploadedImageResult != null);
    assert(uploading != null);
    assert(validatedImage != null);
    assert(submitingImage != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(Initial value),
    Result loading(Loading value),
    Result deleting(Deleting value),
    Result uploadedImageResult(UploadedImageResult value),
    Result uploading(Uploading value),
    Result validatedImage(ValidatedImage value),
    Result submitingImage(SubmitingImage value),
    Result deleteSuccess(DeleteSuccess value),
    Result deleteFailure(DeleteFailure value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ImagewatcherState {
  const factory LoadFailure(ImageFailure imageFailure) = _$LoadFailure;

  ImageFailure get imageFailure;

  LoadFailure copyWith({ImageFailure imageFailure});
}
