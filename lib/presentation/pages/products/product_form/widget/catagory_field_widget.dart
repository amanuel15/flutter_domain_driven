import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class CatagoryField extends HookWidget {
  const CatagoryField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ProductFormBloc, ProductFormState>(
          condition: (p, c) => p.isEditing != c.isEditing,
          listener: (context, state) {
            context.formCatagories = state.product.catagories.value.fold(
              (_) => mutableListOf<CatagoryItemPrimitive>(),
              (catagoryList) => catagoryList
                  .map((_) => CatagoryItemPrimitive.fromDomain(_))
                  .toMutableList(),
            );
          },
        ),
      ],
      child: Consumer<FormCatagories>(
        builder: (context, formCatagories, child) {
          return;
        },
      ),
    );
  }
}
