import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/image_watcher/image_watcher_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/lables_item_presentation.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/sub_product_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/add_catagory_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/add_image_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/add_labels.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/catagory_popup_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/create_subproduct.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/description_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/hype_description_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/image_popup_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/labels_form_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/name_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/portrait_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/show_subproducts.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/total_amount_field_widget.dart';
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
        BlocProvider(
          create: (context) => getIt<ImagewatcherBloc>(),
        ),
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
              ChangeNotifierProvider(
                create: (_) => FormLabels(),
              ),
              ChangeNotifierProvider(
                create: (_) => FormSubProducts(),
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
                        child: CustomScrollView(
                          slivers: <Widget>[
                            const SliverToBoxAdapter(
                              child: PortraitImageWidget(),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                            const SliverToBoxAdapter(
                              child: NameField(),
                            ),
                            const SliverToBoxAdapter(
                              child: DescriptionField(),
                            ),
                            const SliverToBoxAdapter(
                              child: HypeDescriptionField(),
                            ),
                            const SliverToBoxAdapter(
                              child: AmountField(),
                            ),
                            const SliverToBoxAdapter(
                              child: AddCatagoryWidget(),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                            const SliverToBoxAdapter(
                              child: AddImageWidget(),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                            const SliverToBoxAdapter(
                              child: AddPortraitWidget(),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                            const SliverToBoxAdapter(
                              child: LableWidget(),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                            const SliverToBoxAdapter(
                              child: LabelsFormWidget(),
                            ),
                            const SliverToBoxAdapter(
                              child: ShowSubProducts(),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                            SliverToBoxAdapter(
                              child: addSubProduct(context),
                            ),
                            const SliverToBoxAdapter(
                              child: SizedBox(
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SelectCategoriesPopUp(),
                  const SelectImagePopup(),
                  const CreateSubproduct(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget addSubProduct(BuildContext context) {
  return Material(
    elevation: 15,
    type: MaterialType.card,
    color: const Color(0xFFF10F43),
    child: InkWell(
      onTap: () {
        context
            .bloc<ProductFormBloc>()
            .add(const ProductFormEvent.subProductEditingOrNot());
        context.bloc<ProductFormBloc>().add(
            ProductFormEvent.subProductSelected(SubProductPrimitive.empty()));
      },
      child: SizedBox(
          width: 0.92.wp.toDouble(),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 0.05.hp.toDouble(),
          )),
    ),
  );
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
