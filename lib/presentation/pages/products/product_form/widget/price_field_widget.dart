import 'package:finished_notes_firebase_ddd_course/application/product/product_form/product_form_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PriceField extends HookWidget {
  const PriceField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocConsumer<ProductFormBloc, ProductFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.value =
            state.product.soldAmount.getOrCrash() as TextEditingValue;
      },
      buildWhen: (p, c) => p.product.soldAmount != c.product.soldAmount,
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
              labelText: 'Sold Amount',
              counterText: '',
            ),
            onChanged: (value) => context
                .bloc<ProductFormBloc>()
                .add(ProductFormEvent.soldAmountChanged(value as int)),
            validator: (_) => context
                .bloc<ProductFormBloc>()
                .state
                .product
                .soldAmount
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
