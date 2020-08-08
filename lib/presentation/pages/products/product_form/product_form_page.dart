import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/catagory_watcher/catagory_watcher_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/add_fields.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/catagory_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/description_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/hype_description_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/name_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/total_amount_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/critical_failure_display_pwidget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProductFormPage extends HookWidget {
  final Product editedProduct;

  const ProductFormPage({
    Key key,
    @required this.editedProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<ProductFormBloc>()
              ..add(ProductFormEvent.initialized(optionOf(editedProduct)))),
        // BlocProvider(
        //   create: (context) => getIt<CatagoryWatcherBloc>(),
        // ),
      ],
      child: BlocConsumer<ProductFormBloc, ProductFormState>(
        listenWhen: (p, c) =>
            p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    duration: const Duration(seconds: 5),
                    message: failure.map(
                        // Use localized strings here in your apps
                        insufficientPermissions: (_) =>
                            'Insufficient permissions ❌',
                        unableToUpdate: (_) =>
                            "Couldn't update the product. Was it deleted from another device?",
                        unexpected: (_) =>
                            'Unexpected error occured, please contact support.'),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil((route) =>
                      route.settings.name == Routes.productsOverviewPage);
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          final double screenHeight = MediaQuery.of(context).size.width;
          final double screenWidth = MediaQuery.of(context).size.width;
          ScreenUtil.init(context,
              width: screenWidth, height: screenHeight, allowFontScaling: true);

          return const ProductFormPageScaffold();
          // Stack(
          //   children: <Widget>[
          //     const ProductFormPageScaffold(),
          //     SavingInProgressOverlay(isSaving: state.isSaving),
          //     //selectCategoriesPopUp(context, state),
          //   ],
          // );
        },
      ),
    );
  }
}

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
                                                        print('ui ${newPath}');
                                                        if (newPath.length <
                                                            4) {
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

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                // Not within a Scaffold. We have to get the TextStyle from a theme ourselves.
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductFormPageScaffold extends StatelessWidget {
  const ProductFormPageScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    FocusScopeNode focusNode = FocusScopeNode();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        bottomOpacity: 20,
        actions: <Widget>[
          InkWell(
            //onTap: exitPage,
            child: Icon(Icons.cancel),
          )
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(ScreenUtil().setWidth(10).toDouble()))),
        elevation: 20,
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          'Flutter Demo',
          style: TextStyle(
              fontSize: ScreenUtil()
                  .setSp(18, allowFontScalingSelf: true)
                  .toDouble()),
        ),
      ),
      body: BlocConsumer<ProductFormBloc, ProductFormState>(
        listener: (context, state) {
          if (state.catagoryEditing) {
            focusNode.unfocus();
          }
        },
        //condition: (p, c) => p.showErrorMessage != c.showErrorMessage,
        //condition: (p, c) => p.catagoryEditing != c.catagoryEditing,
        builder: (context, state) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => FormCatagories(),
              ),
              ChangeNotifierProvider(
                create: (_) => FormImages(),
              ),
            ],
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
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
                    ]),
              ),
              child: Stack(
                children: <Widget>[
                  Form(
                    autovalidate: state.showErrorMessage,
                    // child: AbsorbPointer(
                    //   absorbing: state.isEditing && !state.catagoryEditing,
                    //   child: FocusScope(
                    //     autofocus: true,
                    //     //node: ,
                    //     child: SingleChildScrollView(
                    //       padding: EdgeInsets.fromLTRB(
                    //           0.04.wp.toDouble(), 0, 0.04.wp.toDouble(), 0),
                    //       child: Column(
                    //         children: <Widget>[
                    //           SizedBox(
                    //             height: ScreenUtil()
                    //                 .setHeight(screenHeight / 35)
                    //                 .toDouble(),
                    //           ),
                    //           const NameField(),
                    //           const DescriptionField(),
                    //           const HypeDescriptionField(),
                    //           const AmountField(),
                    //           const AddField(),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    child: AbsorbPointer(
                      absorbing: state.catagoryEditing,
                      child: FocusScope(
                        autofocus: true,
                        node: focusNode,
                        child: const CustomScrollView(
                          slivers: <Widget>[
                            SliverToBoxAdapter(
                              child: NameField(),
                            ),
                            SliverToBoxAdapter(
                              child: DescriptionField(),
                            ),
                            SliverToBoxAdapter(
                              child: HypeDescriptionField(),
                            ),
                            SliverToBoxAdapter(
                              child: AmountField(),
                            ),
                            SliverToBoxAdapter(
                              child: AddField(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  selectCategoriesPopUp(context, state),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
