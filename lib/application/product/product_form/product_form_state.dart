part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    @required Product product,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required bool catagoryEditing,
    @required bool catagorySaving,
    @required List<String> choosenCatagories,
    @required Option<Either<CatagoryFailure, Unit>> saveFailureOrCatagoryOption,
    @required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
        product: Product.empty(),
        showErrorMessage: false,
        isEditing: false,
        isSaving: false,
        catagoryEditing: false,
        catagorySaving: false,
        choosenCatagories: ['Catagories'],
        saveFailureOrCatagoryOption: none(),
        saveFailureOrSuccessOption: none(),
      );
}
