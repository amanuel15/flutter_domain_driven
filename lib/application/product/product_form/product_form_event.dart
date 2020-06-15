part of 'product_form_bloc.dart';

@freezed
abstract class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.initialized(
      Option<Product> initialProductOption) = _Initialized;
  const factory ProductFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory ProductFormEvent.descriptionChanged(String descStr) =
      _DescriptionChanged;
  const factory ProductFormEvent.hypeDescriptionChanged(String hypeDescStr) =
      _HypeDescriptionChanged;
  const factory ProductFormEvent.totalAmountChanged(int totalNum) =
      _TotalAmountChanged;
  const factory ProductFormEvent.soldAmountChanged(int soldNum) =
      _SoldAmountChanged;
  const factory ProductFormEvent.imagesChanged(
      KtList<ImageItemPrimitive> images) = _ImagesChanged;
  const factory ProductFormEvent.catagoriesChanged(
      KtList<CatagoryItemPrimitive> catagories) = _CatagoriesChanged;
  const factory ProductFormEvent.saved() = _Saved;
}