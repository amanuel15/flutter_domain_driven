part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormState with _$ProductFormState{
  const factory ProductFormState({
    @required Product product,
    @required bool showErrorMessage,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ProductFormState;

  factory ProductFormState.initial() => ProductFormState(
    product: Product.empty(),
    showErrorMessage: false,
    isEditing: false,
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
