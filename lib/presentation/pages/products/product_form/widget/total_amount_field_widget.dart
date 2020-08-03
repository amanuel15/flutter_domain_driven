import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AmountField extends HookWidget {
  const AmountField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.product.totalAmount.getOrCrash().toString();
      },
      buildWhen: (p, c) => p.product.totalAmount != c.product.totalAmount,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: textEditingController,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            autocorrect: false,
            decoration: InputDecoration(
              labelText: 'Amount',
              counterText: '',
            ),
            onChanged: (value) => context
                .bloc<ProductFormBloc>()
                .add(ProductFormEvent.totalAmountChanged(value as int)),
            validator: (_) => context
                .bloc<ProductFormBloc>()
                .state
                .product
                .totalAmount
                .value
                .fold(
                  (f) => f.maybeMap(
                    empty: (f) => 'Cannot be empty',
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
