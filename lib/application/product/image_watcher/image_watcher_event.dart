part of 'image_watcher_bloc.dart';

@freezed
abstract class ImagewatcherEvent with _$ImagewatcherEvent {
  const factory ImagewatcherEvent.started(
      KtList<ImageItemPrimitive> imageUrls) = _Started;
  const factory ImagewatcherEvent.imageDeleted(
      ImageProperties imageProperties, String imageType) = _ImageDeleted;
  const factory ImagewatcherEvent.imageUploaded(
      ImageProperties imageProperties, String imageType) = _ImageUploaded;
  const factory ImagewatcherEvent.addImage(
      {File image, String imagePath, String imageType}) = _AddImage;
  const factory ImagewatcherEvent.imagesRecived(
          Either<ImageFailure, List<ImageItemPrimitive>> failureOrimages) =
      _ImagesRecived;
}
