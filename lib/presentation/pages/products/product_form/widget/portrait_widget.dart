import 'package:cached_network_image/cached_network_image.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/image_properties.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/image_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_cropper/image_cropper.dart';

class PortraitImageWidget extends HookWidget {
  const PortraitImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        //TODO: make a portrait image field in firestore
        if (!state.product.images.getOrCrash().isEmpty()) {
          String url = state.product.images.getOrCrash()[0].getOrCrash();
          int a = url.indexOf('products') + 11;
          String temp = url.substring(a, a + 44);
          String res = temp.replaceAll('%2F', '/');
          context.bloc<ProductFormBloc>().add(
                ProductFormEvent.setPathForDoc(res),
              );
        }
      },
      builder: (context, state) {
        return state.portraitImage.downloadUrl == ''
            ? Container()
            : SizedBox(
                height: 0.4.hp.toDouble(),
                width: 0.4.hp.toDouble() * (9 / 16),
                child: Material(
                  elevation: 4,
                  clipBehavior: Clip.hardEdge,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(0.04.wp.toDouble()))),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: CachedNetworkImage(
                          progressIndicatorBuilder: (_, __, ___) {
                            return const CircularProgressIndicator();
                          },
                          imageUrl: state.portraitImage.downloadUrl,
                          height: 0.7.hp.toDouble(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 0.035.hp.toDouble(),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                                ScreenUtil()
                                    .setWidth(screenWidth * 0.01)
                                    .toDouble(),
                                0,
                                ScreenUtil()
                                    .setWidth(screenWidth * 0.01)
                                    .toDouble(),
                                0.005.hp.toDouble()),
                            child: MaterialButton(
                              clipBehavior: Clip.hardEdge,
                              onPressed: () {
                                context.bloc<ProductFormBloc>().add(
                                      ProductFormEvent.portraitSelected(
                                        ImageProperties.empty(),
                                      ),
                                    );
                              },
                              color: const Color.fromRGBO(10, 0, 0, .01),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(ScreenUtil()
                                          .setWidth(20)
                                          .toDouble()))),
                              child: SizedBox(
                                width: 0.4.hp.toDouble() * (9 / 16),
                                child: Icon(
                                  Icons.delete,
                                  color: const Color(0xFFF10F43),
                                  size: 0.03.hp.toDouble(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}

class AddPortraitWidget extends HookWidget {
  const AddPortraitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listener: (context, state) {
        //TODO: make a portrait image field in firestore
      },
      builder: (context, state) {
        return state.portraitImage.downloadUrl == ''
            ? Material(
                elevation: 15,
                type: MaterialType.card,
                color: const Color(0xFFF10F43),
                child: InkWell(
                  onTap: () async {
                    await getFile(
                      context,
                      const CropAspectRatio(ratioX: 9.0, ratioY: 16.0),
                      1920,
                      1080,
                      "Portrait",
                      state.pathForDocument,
                    );
                  },
                  child: SizedBox(
                    width: 0.92.wp.toDouble(),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 0.05.hp.toDouble(),
                    ),
                  ),
                ),
              )
            : Container();
      },
    );
  }
}
