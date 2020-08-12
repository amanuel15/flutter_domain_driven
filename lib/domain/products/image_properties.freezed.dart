// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ImageProperties {
  File get image;
  Image get rawImage;
  String get downloadUrl;
  String get path;

  ImageProperties copyWith(
      {File image, Image rawImage, String downloadUrl, String path});
}

class _$ImagePropertiesTearOff {
  const _$ImagePropertiesTearOff();

  _ImageProperties call(
      {@required File image,
      Image rawImage,
      @required String downloadUrl,
      @required String path}) {
    return _ImageProperties(
      image: image,
      rawImage: rawImage,
      downloadUrl: downloadUrl,
      path: path,
    );
  }
}

const $ImageProperties = _$ImagePropertiesTearOff();

class _$_ImageProperties implements _ImageProperties {
  const _$_ImageProperties(
      {@required this.image,
      this.rawImage,
      @required this.downloadUrl,
      @required this.path})
      : assert(image != null),
        assert(downloadUrl != null),
        assert(path != null);

  @override
  final File image;
  @override
  final Image rawImage;
  @override
  final String downloadUrl;
  @override
  final String path;

  @override
  String toString() {
    return 'ImageProperties(image: $image, rawImage: $rawImage, downloadUrl: $downloadUrl, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageProperties &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.rawImage, rawImage) ||
                const DeepCollectionEquality()
                    .equals(other.rawImage, rawImage)) &&
            (identical(other.downloadUrl, downloadUrl) ||
                const DeepCollectionEquality()
                    .equals(other.downloadUrl, downloadUrl)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(rawImage) ^
      const DeepCollectionEquality().hash(downloadUrl) ^
      const DeepCollectionEquality().hash(path);

  @override
  _$_ImageProperties copyWith({
    Object image = freezed,
    Object rawImage = freezed,
    Object downloadUrl = freezed,
    Object path = freezed,
  }) {
    return _$_ImageProperties(
      image: image == freezed ? this.image : image as File,
      rawImage: rawImage == freezed ? this.rawImage : rawImage as Image,
      downloadUrl:
          downloadUrl == freezed ? this.downloadUrl : downloadUrl as String,
      path: path == freezed ? this.path : path as String,
    );
  }
}

abstract class _ImageProperties implements ImageProperties {
  const factory _ImageProperties(
      {@required File image,
      Image rawImage,
      @required String downloadUrl,
      @required String path}) = _$_ImageProperties;

  @override
  File get image;
  @override
  Image get rawImage;
  @override
  String get downloadUrl;
  @override
  String get path;

  @override
  _ImageProperties copyWith(
      {File image, Image rawImage, String downloadUrl, String path});
}
