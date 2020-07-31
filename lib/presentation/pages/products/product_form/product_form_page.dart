import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/description_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/hype_description_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/name_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/widget/total_amount_field_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class ProductFormPage extends HookWidget {
  final Product editedProduct;

  const ProductFormPage({
    Key key,
    @required this.editedProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductFormBloc>()
        ..add(ProductFormEvent.initialized(optionOf(editedProduct))),
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
          return Stack(
            children: <Widget>[
              const ProductFormPageScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
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
    return Scaffold(
      body: BlocBuilder<ProductFormBloc, ProductFormState>(
        condition: (p, c) => p.showErrorMessage != c.showErrorMessage,
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
            child: Form(
              autovalidate: state.showErrorMessage,
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
