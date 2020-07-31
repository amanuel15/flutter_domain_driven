import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NameField extends HookWidget {
  const NameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.product.productName.getOrCrash();
      },
      buildWhen: (p, c) => p.product.productName != c.product.productName,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            decoration: InputDecoration(
              labelText: 'Name',
              counterText: '',
            ),
            maxLength: ProductName.maxLength,
            maxLengthEnforced: true,
            maxLines: 1,
            minLines: 1,
            onChanged: (value) => context
                .bloc<ProductFormBloc>()
                .add(ProductFormEvent.nameChanged(value)),
            validator: (_) => context
                .bloc<ProductFormBloc>()
                .state
                .product
                .productName
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
                    exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                    multiline: (f) => 'Cannot be more than one line',
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
