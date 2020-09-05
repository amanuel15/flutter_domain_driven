import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/image_watcher/image_watcher_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

Flushbar uploadingImageProgressIndicator = FlushbarHelper.createLoading(
  title: "Uploading Image",
  duration: const Duration(seconds: 30),
  message: "Please Wait",
  linearProgressIndicator: const LinearProgressIndicator(
    backgroundColor: Colors.cyanAccent,
    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
  ),
);

Flushbar submittingImageProgressIndicator = FlushbarHelper.createLoading(
  title: "Processing Image",
  duration: const Duration(seconds: 30),
  message: "Please Wait",
  linearProgressIndicator: const LinearProgressIndicator(
    backgroundColor: Colors.cyanAccent,
    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
  ),
);

void changeImagePosition(
    BuildContext context, int newPosition, int lastPosition) {
  List<ImageItemPrimitive> a = context.formImages.asList();
  final selectedImage = a.removeAt(lastPosition);
  a.insert(newPosition, selectedImage);
  context.formImages = a.toImmutableList();
}

void deleteImage(BuildContext context, ImageItemPrimitive item) {
  List<ImageItemPrimitive> a = context.formImages.asList();
  a.remove(item);
  //print(a);
  context.formImages = a.toImmutableList();
  context.bloc<ProductFormBloc>().add(ProductFormEvent.imagesRecived(
      context.formImages.map((v) => v.toImageProperties())));
}

class SelectImagePopup extends HookWidget {
  const SelectImagePopup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final CarouselController _controller = CarouselController();

    return BlocBuilder<ProductFormBloc, ProductFormState>(
      //listener: (context, state){},
      condition: (p, c) => p.imageEditing != c.imageEditing,
      builder: (context, stateF) {
        return AnimatedPositioned(
          height: ScreenUtil().setHeight(screenHeight * 0.8).toDouble(),
          left: ScreenUtil().setWidth(screenWidth * 0.03).toDouble(),
          width: ScreenUtil().setWidth(screenWidth * 0.94).toDouble(),
          top: stateF.imageEditing
              ? screenHeight - (screenHeight * 0.8)
              : screenHeight,
          duration: const Duration(milliseconds: 500),
          child: AbsorbPointer(
            absorbing: !stateF.imageEditing,
            child: Material(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(ScreenUtil().setWidth(20).toDouble())),
              ),
              shadowColor: Colors.black,
              elevation: 10,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.25, 0.50, 0.75],
                    colors: [
                      Color(0xFFCEF1E9),
                      Color(0xFFDFD1AA),
                      Color(0xFFADB9EC),
                      Color(0xFFECB6E1)
                    ],
                  ),
                ),
                child: BlocConsumer<ImagewatcherBloc, ImagewatcherState>(
                  listener: (context, state) {
                    state.maybeMap(
                      loadSucess: (success) {
                        //print('success: ${success.imageProperties}');
                        context.bloc<ProductFormBloc>().add(
                              ProductFormEvent.imagesRecived(
                                  success.imageProperties),
                            );
                        //context.formImages = success.imageProperties.map((v) => v.toPrimitive());
                      },
                      deleteSuccess: (value) {
                        deleteImage(
                            context, value.imageProperties.toPrimitive());
                      },
                      uploading: (_) {
                        uploadingImageProgressIndicator.show(context);
                        context
                            .bloc<ProductFormBloc>()
                            .add(const ProductFormEvent.imageUploadingOrNot());
                      },
                      validatedImage: (validatedImage) {
                        if (!submittingImageProgressIndicator.isDismissed()) {
                          submittingImageProgressIndicator.dismiss();
                        }
                        validatedImage.productImage.value.fold(
                          (failure) => {
                            FlushbarHelper.createError(
                              duration: const Duration(seconds: 4),
                              message: failure.maybeWhen(
                                invalidImageParameter: (image, isSmall, isLarge,
                                    correctAspectRatio) {
                                  if (isSmall) {
                                    return "Image is Too Small";
                                  } else if (isLarge) {
                                    return "Image is Too Large";
                                  } else {
                                    return "Incorrect Aspect Ratio";
                                  }
                                },
                                orElse: () => "Unknown Error\n Try Again",
                              ),
                              title: "Oops Something Went Wrong",
                            ).show(context)
                          },
                          (success) => context.bloc<ImagewatcherBloc>().add(
                              ImagewatcherEvent.imageUploaded(
                                  success, validatedImage.imageType)),
                        );
                      },
                      uploadedImageResult: (imageUploadSuccessFailure) {
                        if (!uploadingImageProgressIndicator.isDismissed()) {
                          uploadingImageProgressIndicator.dismiss();
                        }
                        // if (uploadingImage) {
                        //   uploadingImage = false;
                        // }
                        context
                            .bloc<ProductFormBloc>()
                            .add(const ProductFormEvent.imageUploadingOrNot());
                        imageUploadSuccessFailure.imageUploadSuccessFailure
                            .fold(
                          (failure) => {
                            FlushbarHelper.createError(
                              duration: const Duration(seconds: 4),
                              message: failure
                                  .maybeWhen(
                                    imageAlreadyExist: () =>
                                        "Image Has Already Been Uploaded",
                                    uploadFailed: () =>
                                        "Image Failed To Upload",
                                    orElse: () => "Ambiguous Error",
                                  )
                                  .toString(),
                              title: "Oops Something Went Wrong",
                            ).show(context),
                          },
                          (success) => {
                            FlushbarHelper.createSuccess(
                              title: "Success",
                              duration: const Duration(seconds: 1),
                              message: "Image Has been Uploaded",
                            ).show(context),
                            if (imageUploadSuccessFailure.imageType ==
                                "LandScape")
                              {
                                context.formImages +=
                                    [success.toPrimitive()].toImmutableList(),
                                context.bloc<ProductFormBloc>().add(
                                      ProductFormEvent.imageSelected(success),
                                    ),
                              }
                            else if (imageUploadSuccessFailure.imageType ==
                                "Portrait")
                              {
                                context.bloc<ProductFormBloc>().add(
                                      ProductFormEvent.portraitSelected(
                                          success),
                                    ),
                              },
                            //validateEntity(),
                          },
                        );
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return Consumer<FormImages>(
                      builder: (context, formImages, child) {
                        return ListView(
                          padding: const EdgeInsets.all(0),
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                context
                                    .bloc<ProductFormBloc>()
                                    .add(const ProductFormEvent.imageAdded());
                              },
                              child: Card(
                                elevation: 10,
                                color: Colors.deepPurpleAccent,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(
                                      ScreenUtil().setWidth(20).toDouble()),
                                )),
                                child: SizedBox(
                                  height: 0.06.hp.toDouble(),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: ScreenUtil()
                                            .setWidth(screenWidth / 50)
                                            .toDouble(),
                                      ),
                                      Icon(
                                        Icons.arrow_downward,
                                        color: Colors.white,
                                        size: ScreenUtil()
                                            .setWidth(screenHeight / 30)
                                            .toDouble(),
                                      ),
                                      const AutoSizeText(
                                        "Slide Down",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 0.03.hp.toDouble()),
                                context.formImages.asList().isNotEmpty
                                    ? CarouselSlider(
                                        carouselController: _controller,
                                        options: CarouselOptions(
                                          aspectRatio: 19 / 9,
                                          enableInfiniteScroll: false,
                                          enlargeCenterPage: true,
                                        ),
                                        items: context.formImages
                                            .asList()
                                            .map(
                                              (item) => Stack(
                                                overflow: Overflow.clip,
                                                children: <Widget>[
                                                  CachedNetworkImage(
                                                    width: ScreenUtil()
                                                            .setHeight(
                                                                screenHeight /
                                                                    4)
                                                            .toDouble() *
                                                        (19 / 9),
                                                    imageUrl: item.name,
                                                    fit: BoxFit.fitWidth,
                                                  ),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0,
                                                                .003
                                                                    .hp
                                                                    .toDouble(),
                                                                0.02
                                                                    .wp
                                                                    .toDouble(),
                                                                0),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            context
                                                                .bloc<
                                                                    ImagewatcherBloc>()
                                                                .add(ImagewatcherEvent
                                                                    .imageDeleted(
                                                                        item.toImageProperties(),
                                                                        ''));
                                                            deleteImage(
                                                                context, item);
                                                          },
                                                          child:
                                                              IconShadowWidget(
                                                            Icon(
                                                              Icons.cancel,
                                                              color:
                                                                  Colors.white,
                                                              size: .03
                                                                  .hp
                                                                  .toDouble(),
                                                            ),
                                                            shadowColor:
                                                                Colors.grey,
                                                            showShadow: true,
                                                          ),
                                                        ),
                                                      )),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0.02
                                                                    .wp
                                                                    .toDouble(),
                                                                .003
                                                                    .hp
                                                                    .toDouble(),
                                                                0,
                                                                0),
                                                        child: GestureDetector(
                                                          onTap: () async {
                                                            final oldIndex =
                                                                context
                                                                    .formImages
                                                                    .indexOf(
                                                                        item);
                                                            _asyncInputDialog(
                                                                    context,
                                                                    context
                                                                        .formImages
                                                                        .size)
                                                                .then(
                                                                    (newIndex) {
                                                              if (newIndex ==
                                                                  null) {
                                                              } else {
                                                                changeImagePosition(
                                                                    context,
                                                                    newIndex -
                                                                        1,
                                                                    oldIndex);
                                                                // context
                                                                //     .bloc<
                                                                //         ProductFormBloc>()
                                                                //     .add(ProductFormEvent
                                                                //         .changeImagePosition(
                                                                //             newIndex,
                                                                //             oldIndex));
                                                              }
                                                            });
                                                          },
                                                          child:
                                                              IconShadowWidget(
                                                            Icon(
                                                              Icons.edit,
                                                              color:
                                                                  Colors.white,
                                                              size: 0.03
                                                                  .hp
                                                                  .toDouble(),
                                                            ),
                                                            shadowColor:
                                                                Colors.grey,
                                                          ),
                                                        ),
                                                      )),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                        0,
                                                        0,
                                                        0.04.wp.toDouble(),
                                                        10,
                                                      ),
                                                      child: Text(
                                                        (context.formImages
                                                                    .indexOf(
                                                                        item) +
                                                                1)
                                                            .toString(),
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: ScreenUtil()
                                                              .setSp(16)
                                                              .toDouble(),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                            .toList(),
                                      )
                                    : SizedBox(
                                        height: .25.hp.toDouble(),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: AutoSizeText(
                                            "NO IMAGES SELECTED",
                                            style: TextStyle(
                                                fontSize: ScreenUtil()
                                                    .setSp(24,
                                                        allowFontScalingSelf:
                                                            true)
                                                    .toDouble(),
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                SizedBox(
                                  height: .01.hp.toDouble(),
                                ),
                                SizedBox(
                                  height: 0.05.hp.toDouble(),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          _controller.previousPage(
                                              duration: const Duration(
                                                  milliseconds: 500));
                                        },
                                        child: IconShadowWidget(
                                          Icon(
                                            Icons.arrow_back_ios,
                                            color: const Color.fromRGBO(
                                                25, 25, 25, 0.7),
                                            size: 0.03.hp.toDouble(),
                                          ),
                                          showShadow: true,
                                        ),
                                      ),
                                      SizedBox(
                                        width: ScreenUtil()
                                            .setWidth(screenWidth * 0.6)
                                            .toDouble(),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          _controller.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 500));
                                        },
                                        child: IconShadowWidget(
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: const Color.fromRGBO(
                                                25, 25, 25, 0.7),
                                            size: 0.03.hp.toDouble(),
                                          ),
                                          showShadow: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: .05.hp.toDouble(),
                                ),
                                SizedBox(
                                  height: 0.07.hp.toDouble(),
                                  child: Material(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(ScreenUtil()
                                                .setWidth(20)
                                                .toDouble()))),
                                    clipBehavior: Clip.hardEdge,
                                    child: Ink(
                                      width: 0.9.wp.toDouble(),
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color.fromRGBO(255, 94, 0, 1),
                                                Color.fromRGBO(255, 00, 112, 1)
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight),
                                          border: Border.all(
                                              color: Colors.transparent)),
                                      child: InkWell(
                                        onTap: () async {
                                          await getFile(
                                            context,
                                            const CropAspectRatio(
                                                ratioX: 16.0, ratioY: 9.0),
                                            1080,
                                            1920,
                                            "LandScape",
                                            stateF.pathForDocument,
                                          );
                                        },
                                        child: Center(
                                          child: Icon(
                                            Icons.add,
                                            color: const Color.fromRGBO(
                                                255, 215, 0, 1),
                                            size: 0.0625.hp.toDouble(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Future<int> _asyncInputDialog(BuildContext context, int listLength) async {
  int newIndex;
  final TextEditingController _controller = TextEditingController();
  return showDialog<int>(
    context: context,
    barrierDismissible: true, // dialog is dismissible with a tap on the barrier
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Enter Image Position 1-$listLength'),
        content: Row(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                controller: _controller,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(20, allowFontScalingSelf: true)
                        as double),
                decoration: InputDecoration(
                    focusColor: Colors.yellow,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            ScreenUtil().setWidth(10) as double)),
                        borderSide:
                            const BorderSide(color: Colors.deepPurpleAccent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            ScreenUtil().setWidth(5) as double)),
                        borderSide: const BorderSide(color: Colors.blueGrey)),
                    prefixIcon: const Icon(
                      Icons.autorenew,
                      color: Colors.deepPurpleAccent,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil().setSp(16) as double),
                    labelText: 'Image Position'),
                keyboardType: TextInputType.number,
                autocorrect: false,
                obscureText: false,
                autovalidate: true,
                validator: (_) {
                  try {
                    if (int.parse(_controller.text) - 1 < 0 ||
                        int.parse(_controller.text) - 1 > listLength) {
                      print('hoe');
                      return 'Enter a Digit Between 1-$listLength';
                    } else {
                      newIndex = int.parse(_controller.text);
                      return null;
                    }
                  } catch (e) {
                    return 'Enter a Digit';
                  }
                },
              ),
            )
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('Submit'),
            onPressed: () {
              print(newIndex);
              Navigator.of(context).pop(newIndex);
            },
          ),
        ],
      );
    },
  );
}

Future getFile(BuildContext context, CropAspectRatio cropAspectRatio,
    int maxHeight, int maxWidth, String imageType, String imageDocPath) async {
  await FilePicker.getFile(type: FileType.image).then((file) async {
    print(file.absolute.path.split('/').last);
    await _cropImage(context, file, file.absolute.path.split('/').last,
        cropAspectRatio, maxHeight, maxWidth, imageType, imageDocPath);
  }).catchError((onError) {});
}

Future<Null> _cropImage(
  BuildContext context,
  File imageFile,
  String imagePath,
  CropAspectRatio cropAspectRatio,
  int maxHeight,
  int maxWidth,
  String imageType,
  String imageDocPath,
) async {
  final File croppedFile = await ImageCropper.cropImage(
    sourcePath: imageFile.path,
    maxHeight: maxHeight,
    maxWidth: maxWidth,
    aspectRatio: cropAspectRatio,
    androidUiSettings: const AndroidUiSettings(
      toolbarTitle: 'Cropper',
      toolbarColor: Colors.deepOrange,
      toolbarWidgetColor: Colors.white,
      initAspectRatio: CropAspectRatioPreset.original,
      lockAspectRatio: true,
    ),
    iosUiSettings: const IOSUiSettings(
      title: 'Cropper',
      aspectRatioLockEnabled: true,
    ),
  ).catchError((onError) {
    FlushbarHelper.createError(
      duration: const Duration(seconds: 4),
      message: onError.toString(),
      title: "Oops Something Went Wrong",
    );
    print(onError.toString());
  });
  if (croppedFile != null) {
    context.bloc<ImagewatcherBloc>().add(ImagewatcherEvent.addImage(
        image: croppedFile, imagePath: imageDocPath, imageType: imageType));
  }
}
