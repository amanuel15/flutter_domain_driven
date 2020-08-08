import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/catagory_item_presentation_classes.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/product_form/misc/image_item_presentation_classes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'product_form_event.dart';
part 'product_form_state.dart';

part 'product_form_bloc.freezed.dart';

@injectable
class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final IProductRepository _productRepository;

  ProductFormBloc(this._productRepository);

  @override
  ProductFormState get initialState => ProductFormState.initial();

  @override
  Stream<ProductFormState> mapEventToState(
    ProductFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialProductOption.fold(
        () => state,
        (initialProduct) {
          return state.copyWith(
            product: initialProduct,
            isEditing: true,
          );
        },
      );
    }, nameChanged: (e) async* {
      yield state.copyWith(
        product: state.product.copyWith(productName: ProductName(e.nameStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, descriptionChanged: (e) async* {
      yield state.copyWith(
        product: state.product
            .copyWith(productDescription: ProductDescription(e.descStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, hypeDescriptionChanged: (e) async* {
      yield state.copyWith(
        product: state.product
            .copyWith(hypeDescription: ProductHypeDescription(e.hypeDescStr)),
        saveFailureOrSuccessOption: none(),
      );
    }, totalAmountChanged: (e) async* {
      yield state.copyWith(
        product: state.product.copyWith(totalAmount: TotalAmount(e.totalNum)),
        saveFailureOrSuccessOption: none(),
      );
    }, soldAmountChanged: (e) async* {
      yield state.copyWith(
        product: state.product.copyWith(soldAmount: SoldAmount(e.soldNum)),
        saveFailureOrSuccessOption: none(),
      );
    }, imagesChanged: (e) async* {
      final imageOption = await _productRepository.pickImage();
      // TODO: yield states based on image picker repo
      //yield imageOption.fold((l) => null, (r) => null);
      yield state.copyWith(
        product: state.product.copyWith(
            // images: ListImage(
            //   e.images.map((primitive) => primitive.toDomain()),
            // ),
            ),
        saveFailureOrSuccessOption: none(),
      );
    }, catagoriesChanged: (e) async* {
      yield state.copyWith(
        product: state.product.copyWith(
          catagories: ListCatagories(
            e.catagories.map((primitive) => primitive.toDomain()),
          ),
        ),
        saveFailureOrSuccessOption: none(),
      );
    }, saved: (e) async* {
      Either<ProductFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.product.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _productRepository.update(state.product)
            : await _productRepository.create(state.product);
      }
      yield state.copyWith(
        isSaving: false,
        showErrorMessage: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, catagoriesDeleted: (e) async* {
      yield state.copyWith(
        product: state.product.copyWith(
          catagories: ListCatagories(emptyList()),
        ),
        saveFailureOrSuccessOption: none(),
      );
      print('deleted: ${state.product.catagories}');
    }, catagoryAdded: (e) async* {
      yield state.copyWith(
        catagoryEditing: !state.catagoryEditing,
        saveFailureOrSuccessOption: none(),
      );
    }, catagorySelected: (e) async* {
      print('plus ${state.choosenCatagories + [e.catagory]}');
      yield state.copyWith(
        choosenCatagories: state.choosenCatagories + [e.catagory],
        saveFailureOrSuccessOption: none(),
      );
    });
  }
}
