import 'dart:io';
import 'dart:ui';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_properties.freezed.dart';

@freezed
abstract class ImageProperties with _$ImageProperties {
  const factory ImageProperties(
      {@required File image,
      Image rawImage,
      @required String downloadUrl,
      @required String path}) = _ImageProperties;

  factory ImageProperties.empty() => ImageProperties(
        image: File(''),
        downloadUrl: '',
        path: '',
      );
}

extension ImagePropertiesX on ImageProperties {
  ImageItemPrimitive toPrimitive() {
    return ImageItemPrimitive(name: downloadUrl);
  }
}
