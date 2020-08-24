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
  // TODO: accomidate for the image picker when the button is pressed
  const factory ProductFormEvent.imagesChanged(
      KtList<ImageItemPrimitive> images) = _ImagesChanged;
  const factory ProductFormEvent.catagoriesChanged(
      KtList<CatagoryItemPrimitive> catagories) = _CatagoriesChanged;
  const factory ProductFormEvent.saved() = _Saved;
  const factory ProductFormEvent.imageUploadingOrNot() = _ImageUploadingOrNot;
  const factory ProductFormEvent.catagoriesDeleted() = _CatagoriesDeleted;
  const factory ProductFormEvent.catagoryAdded() = _CatagoryAdded;
  const factory ProductFormEvent.catagorySelected(String catagory) =
      _CatagorySelected;
  const factory ProductFormEvent.imageAdded() = _ImageAdded;
  const factory ProductFormEvent.imageSelected(
      ImageProperties imageProperties) = _ImageSelected;
  const factory ProductFormEvent.imagesRecived(
      KtList<ImageProperties> imageProperties) = _ImagesRecived;
  const factory ProductFormEvent.portraitSelected(
      ImageProperties imageProperties) = _PortraitSelected;
  const factory ProductFormEvent.changeImagePosition(
      int newPosition, int lastPosition) = _ChangeImagePosition;
  const factory ProductFormEvent.imagesFetched(List<ImageProperties> images) =
      _ImagesFetched;
  const factory ProductFormEvent.labelsSelected(List<String> labels) =
      _LabelsSelected;
  const factory ProductFormEvent.subProductEditingOrNot() =
      _SubProductEditingOrNot;
}
