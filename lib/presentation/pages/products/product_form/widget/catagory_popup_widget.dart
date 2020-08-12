import 'package:auto_size_text/auto_size_text.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/catagory_watcher/catagory_watcher_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/critical_failure_display_pwidget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget selectCategoriesPopUp(BuildContext context, ProductFormState stateF) {
  final double screenHeight = MediaQuery.of(context).size.height;
  final double screenWidth = MediaQuery.of(context).size.width;
  final Shader textLinearGradient = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(200, 189, 21, 249),
      Color.fromARGB(200, 255, 55, 0),
    ],
  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  return AnimatedPositioned(
      height: 0.9.hp.toDouble(),
      left: ScreenUtil().setWidth(screenWidth * 0.03).toDouble(),
      width: ScreenUtil().setWidth(screenWidth * 0.94).toDouble(),
      top: stateF.catagoryEditing ? screenHeight - 0.9.hp : screenHeight,
      duration: const Duration(milliseconds: 500),
      child: AbsorbPointer(
        absorbing: !stateF.catagoryEditing,
        child: Material(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top:
                        Radius.circular(ScreenUtil().setWidth(20).toDouble()))),
            shadowColor: Colors.black,
            elevation: 10,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // ignore: prefer_const_literals_to_create_immutables
                        stops: [
                      0,
                      0.25,
                      0.50,
                      0.75
                    ],
                        colors: const [
                      Color(0xFFCEF1E9),
                      Color(0xFFDFD1AA),
                      Color(0xFFADB9EC),
                      Color(0xFFECB6E1)
                    ])),
                child: Column(
                  children: <Widget>[
                    Card(
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
                              InkWell(
                                onTap: () {
                                  context.bloc<ProductFormBloc>().add(
                                      const ProductFormEvent.catagoryAdded());
                                  //undoCategory();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 0.04.hp.toDouble(),
                                ),
                              ),
                              SizedBox(
                                width: 0.7.wp.toDouble(),
                              ),
                              InkWell(
                                onTap: () {
                                  //cancelCategorySelection();
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                  size: 0.04.hp.toDouble(),
                                ),
                              )
                            ],
                          ),
                        )),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 0.7.hp.toDouble()),
                      child: BlocProvider<CatagoryWatcherBloc>(
                        create: (context) {
                          return getIt<CatagoryWatcherBloc>()
                            ..add(const CatagoryWatcherEvent
                                .watchCatagoriesStarted());
                        },
                        child: BlocBuilder<CatagoryWatcherBloc,
                            CatagoryWatcherState>(
                          builder: (context, state) {
                            return state.map(
                              initial: (_) => Container(),
                              inProgress: (_) => const Center(
                                child: CircularProgressIndicator(
                                  backgroundColor:
                                      Color.fromARGB(200, 189, 21, 249),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Color.fromARGB(200, 255, 55, 0),
                                  ),
                                ),
                              ),
                              loadSucess: (state) {
                                final catagories = state.catagories.asList();
                                return ListView(
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 0.03.hp.toDouble(),
                                    ),
                                    SizedBox(
                                      height: 0.03.hp.toDouble(),
                                      width: 0.8.wp.toDouble(),
                                      child: AutoSizeText(
                                        'CATEGORIES',
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20.nsp.toDouble(),
                                          fontWeight: FontWeight.bold,
                                          foreground: Paint()
                                            ..shader = textLinearGradient,
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Column(
                                        children: catagories
                                            .map(
                                              (catagory) => Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                  ScreenUtil()
                                                      .setWidth(
                                                          screenWidth * 0.02)
                                                      .toDouble(),
                                                  ScreenUtil()
                                                      .setHeight(
                                                          screenHeight * 0.01)
                                                      .toDouble(),
                                                  0,
                                                  0,
                                                ),
                                                child: Material(
                                                  clipBehavior: Clip.hardEdge,
                                                  type: MaterialType.card,
                                                  elevation: 5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                          ScreenUtil()
                                                              .setWidth(20)
                                                              .toDouble()),
                                                    ),
                                                  ),
                                                  child: Ink(
                                                    decoration:
                                                        const BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color.fromARGB(200,
                                                              189, 21, 249),
                                                          Color.fromARGB(
                                                              200, 255, 55, 0),
                                                        ],
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                      onTap: () {
                                                        List<String> newPath =
                                                            stateF.choosenCatagories +
                                                                [
                                                                  catagory
                                                                      .getOrCrash()
                                                                ];
                                                        print(
                                                            'ui ${newPath} , the thing${catagory.getOrCrash()}');
                                                        if (newPath.length <
                                                            3) {
                                                          context
                                                              .bloc<
                                                                  ProductFormBloc>()
                                                              .add(ProductFormEvent
                                                                  .catagorySelected(
                                                                      catagory
                                                                          .getOrCrash()));
                                                          context
                                                              .bloc<
                                                                  CatagoryWatcherBloc>()
                                                              .add(CatagoryWatcherEvent
                                                                  .watchSubCatagories(
                                                                      newPath));
                                                        } else {
                                                          context
                                                              .bloc<
                                                                  ProductFormBloc>()
                                                              .add(ProductFormEvent
                                                                  .catagorySelected(
                                                                      catagory
                                                                          .getOrCrash()));
                                                          context
                                                              .bloc<
                                                                  ProductFormBloc>()
                                                              .add(const ProductFormEvent
                                                                  .catagoryAdded());
                                                          context.formCatagories = newPath
                                                              .map((url) =>
                                                                  CatagoryItemPrimitive(
                                                                      name:
                                                                          url))
                                                              .toImmutableList();
                                                          context
                                                              .bloc<
                                                                  ProductFormBloc>()
                                                              .add(ProductFormEvent
                                                                  .catagoriesChanged(
                                                                      context
                                                                          .formCatagories));
                                                        }
                                                      },
                                                      child: SizedBox(
                                                        height: ScreenUtil()
                                                            .setHeight(
                                                                screenHeight /
                                                                    18)
                                                            .toDouble(),
                                                        width: ScreenUtil()
                                                            .setWidth(
                                                                screenWidth *
                                                                    0.9)
                                                            .toDouble(),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0.03
                                                                      .wp
                                                                      .toDouble(),
                                                                  0.01
                                                                      .hp
                                                                      .toDouble(),
                                                                  0,
                                                                  0),
                                                          child: AutoSizeText(
                                                            catagory
                                                                .getOrCrash(),
                                                            maxLines: 1,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20
                                                                  .nsp
                                                                  .toDouble(),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                  ],
                                );
                              },
                              loadFailure: (state) {
                                return CriticalCatagoryFailureDisplay(
                                  failure: state.catagoryFailure,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ))),
      ));
}
