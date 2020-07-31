import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DescriptionField extends HookWidget {
  const DescriptionField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.product.productDescription.getOrCrash();
      },
      buildWhen: (p, c) =>
          p.product.productDescription != c.product.productDescription,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              labelText: 'Description',
              counterText: '',
            ),
            maxLength: ProductDescription.maxLength,
            maxLengthEnforced: true,
            maxLines: null,
            minLines: 1,
            onChanged: (value) => context
                .bloc<ProductFormBloc>()
                .add(ProductFormEvent.descriptionChanged(value)),
            validator: (_) => context
                .bloc<ProductFormBloc>()
                .state
                .product
                .productDescription
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
          ),
        );
      },
    );
  }
}
