import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/image_watcher/image_watcher_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';

class AddImageWidget extends HookWidget {
  const AddImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.width;
    final double screenWidth = MediaQuery.of(context).size.width;
    return BlocListener<ProductFormBloc, ProductFormState>(
      condition: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formImages = state.product.images.value.fold(
          (_) => mutableListOf<ImageItemPrimitive>(),
          (imageList) => imageList
              .map((_) => ImageItemPrimitive.fromDomain(_))
              .toMutableList(),
        );
      },
      child: Consumer<FormImages>(
        builder: (context, formImages, child) {
          final imageUrls = context.formImages.asList();
          return Container(
              height: ScreenUtil().setHeight(screenHeight / 4).toDouble(),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(25, 25, 25, .1),
                  borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setWidth(20).toDouble())),
                  border: Border.all(color: Colors.grey)
                  //imageListErrorMessage == null ? Colors.grey : Colors.red)
                  ),
              child: Stack(
                children: <Widget>[
                  Opacity(
                    opacity: 0.4, // imageListErrorMessage != null ? 0.4 : 1.0,
                    child: Center(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          enlargeCenterPage: false,
                        ),
                        items: imageUrls.map((imageUrl) {
                          return Center(
                            child: CachedNetworkImage(
                              imageUrl: imageUrl.name,
                              height: ScreenUtil()
                                  .setHeight(screenHeight / 4.5)
                                  .toDouble(),
                              fit: BoxFit.cover,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: InkWell(
                          onTap: () {
                            // context.bloc<ProductFormBloc>().add(
                            //       ProductFormEvent.imagesRecived(context
                            //           .formImages
                            //           .map((imageItemPrimitive) =>
                            //               imageItemPrimitive
                            //                   .toImageProperties())),
                            //     );
                            context.bloc<ImagewatcherBloc>().add(
                                  ImagewatcherEvent.started(
                                      imageUrls.toImmutableList()),
                                );
                            context
                                .bloc<ProductFormBloc>()
                                .add(const ProductFormEvent.imageAdded());
                            //selectImages();
                          },
                          child: Icon(
                            Icons.add,
                            color: const Color.fromRGBO(25, 25, 25, 0.9),
                            size: ScreenUtil()
                                .setHeight(screenHeight / 14)
                                .toDouble(),
                          ),
                        ),
                      ),
                      Text(
                        'SELECT IMAGES',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(13).toDouble(),
                            color: const Color.fromRGBO(25, 25, 25, 0.9)),
                      )
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}
