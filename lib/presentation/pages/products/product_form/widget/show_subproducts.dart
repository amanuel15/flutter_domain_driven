import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/sub_product_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/build_context_x.dart';

class ShowSubProducts extends HookWidget {
  const ShowSubProducts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        context.formSubProducts = state.product.subProducts.value.fold(
          (_) => <SubProductPrimitive>[],
          (subProductList) => subProductList
              .map((subProduct) => SubProductPrimitive.fromDomain(subProduct))
              .toList(),
        );
      },
      builder: (context, state) {
        //final subProducts = context.formSubProducts;
        return Column(
          children: context.formSubProducts
              .map(
                (subProduct) => Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  //elevation: 5,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    //mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              context.bloc<ProductFormBloc>().add(
                                    ProductFormEvent.subProductSelected(
                                        subProduct),
                                  );
                              context.bloc<ProductFormBloc>().add(
                                    const ProductFormEvent
                                        .subProductEditingOrNot(),
                                  );
                            },
                            child: Text(
                              subProduct.name,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
