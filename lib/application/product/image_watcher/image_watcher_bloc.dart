import 'dart:async';
import 'dart:io';
import 'dart:ui' as img;

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'image_watcher_event.dart';
part 'image_watcher_state.dart';
part 'image_watcher_bloc.freezed.dart';

@injectable
class ImagewatcherBloc extends Bloc<ImagewatcherEvent, ImagewatcherState> {
  final IProductRepository _imageRepository;

  ImagewatcherBloc(this._imageRepository);

  @override
  ImagewatcherState get initialState => const ImagewatcherState.inital();

  @override
  Stream<ImagewatcherState> mapEventToState(
    ImagewatcherEvent event,
  ) async* {
    event.map(
      started: (e) async* {
        //yield const ImagewatcherState.loading();
        print('statred');
        yield ImagewatcherState.loadSucess(
            _imageRepository.getImages(e.imageUrls));
      },
      imageDeleted: (e) async* {
        yield const ImagewatcherState.deleting();
        yield _imageRepository.deleteImage(e.imageProperties).then(
              (either) => either.fold(
                (f) => ImagewatcherState.deleteFailure(f),
                (imageProperties) =>
                    ImagewatcherState.deleteSuccess(imageProperties),
              ),
            );
      },
      imagesRecived: (e) async* {},
      imageUploaded: (e) async* {
        yield const ImagewatcherState.uploading();
        yield _imageRepository.uploadImage(e.imageProperties).then((either) {
          return ImagewatcherState.uploadedImageResult(
            imageUploadSuccessFailure: either,
            imageType: e.imageType,
          );
        });
      },
      addImage: (e) async* {
        yield const ImagewatcherState.submitingImage();
        final img.Image rawImage =
            await decodeImageFromList(e.image.readAsBytesSync());

        yield ImagewatcherState.validatedImage(
          productImage: ProductImage(
              imageProperties: ImageProperties(
                path: e.imagePath,
                image: e.image,
                downloadUrl: "",
                rawImage: rawImage,
              ),
              imageType: e.imageType),
          imageType: e.imageType,
        );
      },
    );
  }
}
