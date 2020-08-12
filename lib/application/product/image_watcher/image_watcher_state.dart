part of 'image_watcher_bloc.dart';

@freezed
abstract class ImagewatcherState with _$ImagewatcherState {
  const factory ImagewatcherState.inital() = Initial;
  const factory ImagewatcherState.loading() = Loading;
  const factory ImagewatcherState.deleting() = Deleting;
  const factory ImagewatcherState.uploadedImageResult(
      {Either<ImageFailure, ImageProperties> imageUploadSuccessFailure,
      String imageType}) = UploadedImageResult;
  const factory ImagewatcherState.uploading() = Uploading;
  const factory ImagewatcherState.validatedImage(
      {ProductImage productImage, String imageType}) = ValidatedImage;
  const factory ImagewatcherState.submitingImage() = SubmitingImage;
  // const factory ImagewatcherState.deleteImageSucessFailure(
  //         Either<ImageFailure, ImageProperties> imageDeleteSuccessFailure) =
  //     _DeleteImageSucessFailure;
  const factory ImagewatcherState.deleteSuccess(
      ImageProperties imageProperties) = DeleteSuccess;
  const factory ImagewatcherState.deleteFailure(ImageFailure imageFailure) =
      DeleteFailure;
  const factory ImagewatcherState.loadSucess(
      KtList<ImageProperties> imageProperties) = LoadSucess;
  const factory ImagewatcherState.loadFailure(ImageFailure imageFailure) =
      LoadFailure;
}
