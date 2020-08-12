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
    @required bool imageEditing,
    @required bool imageSaving,
    @required List<String> choosenCatagories,
    @required List<ImageProperties> selectedImages,
    @required List<ImageProperties> fetchedImages,
    @required ImageProperties portraitImage,
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
        choosenCatagories: [],
        selectedImages: [],
        fetchedImages: [],
        portraitImage: ImageProperties.empty(),
        imageEditing: false,
        imageSaving: false,
        saveFailureOrCatagoryOption: none(),
        saveFailureOrSuccessOption: none(),
      );
}
