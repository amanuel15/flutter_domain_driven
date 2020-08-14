// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ProductFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  });
}

class _$ProductFormEventTearOff {
  const _$ProductFormEventTearOff();

  _Initialized initialized(Option<Product> initialProductOption) {
    return _Initialized(
      initialProductOption,
    );
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _DescriptionChanged descriptionChanged(String descStr) {
    return _DescriptionChanged(
      descStr,
    );
  }

  _HypeDescriptionChanged hypeDescriptionChanged(String hypeDescStr) {
    return _HypeDescriptionChanged(
      hypeDescStr,
    );
  }

  _TotalAmountChanged totalAmountChanged(int totalNum) {
    return _TotalAmountChanged(
      totalNum,
    );
  }

  _SoldAmountChanged soldAmountChanged(int soldNum) {
    return _SoldAmountChanged(
      soldNum,
    );
  }

  _ImagesChanged imagesChanged(KtList<ImageItemPrimitive> images) {
    return _ImagesChanged(
      images,
    );
  }

  _CatagoriesChanged catagoriesChanged(
      KtList<CatagoryItemPrimitive> catagories) {
    return _CatagoriesChanged(
      catagories,
    );
  }

  _Saved saved() {
    return const _Saved();
  }

  _CatagoriesDeleted catagoriesDeleted() {
    return const _CatagoriesDeleted();
  }

  _CatagoryAdded catagoryAdded() {
    return const _CatagoryAdded();
  }

  _CatagorySelected catagorySelected(String catagory) {
    return _CatagorySelected(
      catagory,
    );
  }

  _ImageAdded imageAdded() {
    return const _ImageAdded();
  }

  _ImageSelected imageSelected(ImageProperties imageProperties) {
    return _ImageSelected(
      imageProperties,
    );
  }

  _ImagesRecived imagesRecived(KtList<ImageProperties> imageProperties) {
    return _ImagesRecived(
      imageProperties,
    );
  }

  _PortraitSelected portraitSelected(ImageProperties imageProperties) {
    return _PortraitSelected(
      imageProperties,
    );
  }

  _ChangeImagePosition changeImagePosition(int newPosition, int lastPosition) {
    return _ChangeImagePosition(
      newPosition,
      lastPosition,
    );
  }

  _ImagesFetched imagesFetched(List<ImageProperties> images) {
    return _ImagesFetched(
      images,
    );
  }
}

const $ProductFormEvent = _$ProductFormEventTearOff();

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialProductOption)
      : assert(initialProductOption != null);

  @override
  final Option<Product> initialProductOption;

  @override
  String toString() {
    return 'ProductFormEvent.initialized(initialProductOption: $initialProductOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialProductOption, initialProductOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialProductOption, initialProductOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialProductOption);

  @override
  _$_Initialized copyWith({
    Object initialProductOption = freezed,
  }) {
    return _$_Initialized(
      initialProductOption == freezed
          ? this.initialProductOption
          : initialProductOption as Option<Product>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return initialized(initialProductOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialProductOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProductFormEvent {
  const factory _Initialized(Option<Product> initialProductOption) =
      _$_Initialized;

  Option<Product> get initialProductOption;

  _Initialized copyWith({Option<Product> initialProductOption});
}

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr) : assert(nameStr != null);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ProductFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @override
  _$_NameChanged copyWith({
    Object nameStr = freezed,
  }) {
    return _$_NameChanged(
      nameStr == freezed ? this.nameStr : nameStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProductFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr;

  _NameChanged copyWith({String nameStr});
}

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.descStr) : assert(descStr != null);

  @override
  final String descStr;

  @override
  String toString() {
    return 'ProductFormEvent.descriptionChanged(descStr: $descStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.descStr, descStr) ||
                const DeepCollectionEquality().equals(other.descStr, descStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(descStr);

  @override
  _$_DescriptionChanged copyWith({
    Object descStr = freezed,
  }) {
    return _$_DescriptionChanged(
      descStr == freezed ? this.descStr : descStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return descriptionChanged(descStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(descStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ProductFormEvent {
  const factory _DescriptionChanged(String descStr) = _$_DescriptionChanged;

  String get descStr;

  _DescriptionChanged copyWith({String descStr});
}

class _$_HypeDescriptionChanged implements _HypeDescriptionChanged {
  const _$_HypeDescriptionChanged(this.hypeDescStr)
      : assert(hypeDescStr != null);

  @override
  final String hypeDescStr;

  @override
  String toString() {
    return 'ProductFormEvent.hypeDescriptionChanged(hypeDescStr: $hypeDescStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HypeDescriptionChanged &&
            (identical(other.hypeDescStr, hypeDescStr) ||
                const DeepCollectionEquality()
                    .equals(other.hypeDescStr, hypeDescStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(hypeDescStr);

  @override
  _$_HypeDescriptionChanged copyWith({
    Object hypeDescStr = freezed,
  }) {
    return _$_HypeDescriptionChanged(
      hypeDescStr == freezed ? this.hypeDescStr : hypeDescStr as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return hypeDescriptionChanged(hypeDescStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hypeDescriptionChanged != null) {
      return hypeDescriptionChanged(hypeDescStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return hypeDescriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hypeDescriptionChanged != null) {
      return hypeDescriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _HypeDescriptionChanged implements ProductFormEvent {
  const factory _HypeDescriptionChanged(String hypeDescStr) =
      _$_HypeDescriptionChanged;

  String get hypeDescStr;

  _HypeDescriptionChanged copyWith({String hypeDescStr});
}

class _$_TotalAmountChanged implements _TotalAmountChanged {
  const _$_TotalAmountChanged(this.totalNum) : assert(totalNum != null);

  @override
  final int totalNum;

  @override
  String toString() {
    return 'ProductFormEvent.totalAmountChanged(totalNum: $totalNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TotalAmountChanged &&
            (identical(other.totalNum, totalNum) ||
                const DeepCollectionEquality()
                    .equals(other.totalNum, totalNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(totalNum);

  @override
  _$_TotalAmountChanged copyWith({
    Object totalNum = freezed,
  }) {
    return _$_TotalAmountChanged(
      totalNum == freezed ? this.totalNum : totalNum as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return totalAmountChanged(totalNum);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (totalAmountChanged != null) {
      return totalAmountChanged(totalNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return totalAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (totalAmountChanged != null) {
      return totalAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _TotalAmountChanged implements ProductFormEvent {
  const factory _TotalAmountChanged(int totalNum) = _$_TotalAmountChanged;

  int get totalNum;

  _TotalAmountChanged copyWith({int totalNum});
}

class _$_SoldAmountChanged implements _SoldAmountChanged {
  const _$_SoldAmountChanged(this.soldNum) : assert(soldNum != null);

  @override
  final int soldNum;

  @override
  String toString() {
    return 'ProductFormEvent.soldAmountChanged(soldNum: $soldNum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SoldAmountChanged &&
            (identical(other.soldNum, soldNum) ||
                const DeepCollectionEquality().equals(other.soldNum, soldNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(soldNum);

  @override
  _$_SoldAmountChanged copyWith({
    Object soldNum = freezed,
  }) {
    return _$_SoldAmountChanged(
      soldNum == freezed ? this.soldNum : soldNum as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return soldAmountChanged(soldNum);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (soldAmountChanged != null) {
      return soldAmountChanged(soldNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return soldAmountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (soldAmountChanged != null) {
      return soldAmountChanged(this);
    }
    return orElse();
  }
}

abstract class _SoldAmountChanged implements ProductFormEvent {
  const factory _SoldAmountChanged(int soldNum) = _$_SoldAmountChanged;

  int get soldNum;

  _SoldAmountChanged copyWith({int soldNum});
}

class _$_ImagesChanged implements _ImagesChanged {
  const _$_ImagesChanged(this.images) : assert(images != null);

  @override
  final KtList<ImageItemPrimitive> images;

  @override
  String toString() {
    return 'ProductFormEvent.imagesChanged(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesChanged &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  _$_ImagesChanged copyWith({
    Object images = freezed,
  }) {
    return _$_ImagesChanged(
      images == freezed ? this.images : images as KtList<ImageItemPrimitive>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imagesChanged(images);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imagesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesChanged != null) {
      return imagesChanged(this);
    }
    return orElse();
  }
}

abstract class _ImagesChanged implements ProductFormEvent {
  const factory _ImagesChanged(KtList<ImageItemPrimitive> images) =
      _$_ImagesChanged;

  KtList<ImageItemPrimitive> get images;

  _ImagesChanged copyWith({KtList<ImageItemPrimitive> images});
}

class _$_CatagoriesChanged implements _CatagoriesChanged {
  const _$_CatagoriesChanged(this.catagories) : assert(catagories != null);

  @override
  final KtList<CatagoryItemPrimitive> catagories;

  @override
  String toString() {
    return 'ProductFormEvent.catagoriesChanged(catagories: $catagories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoriesChanged &&
            (identical(other.catagories, catagories) ||
                const DeepCollectionEquality()
                    .equals(other.catagories, catagories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(catagories);

  @override
  _$_CatagoriesChanged copyWith({
    Object catagories = freezed,
  }) {
    return _$_CatagoriesChanged(
      catagories == freezed
          ? this.catagories
          : catagories as KtList<CatagoryItemPrimitive>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagoriesChanged(catagories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoriesChanged != null) {
      return catagoriesChanged(catagories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagoriesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoriesChanged != null) {
      return catagoriesChanged(this);
    }
    return orElse();
  }
}

abstract class _CatagoriesChanged implements ProductFormEvent {
  const factory _CatagoriesChanged(KtList<CatagoryItemPrimitive> catagories) =
      _$_CatagoriesChanged;

  KtList<CatagoryItemPrimitive> get catagories;

  _CatagoriesChanged copyWith({KtList<CatagoryItemPrimitive> catagories});
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ProductFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProductFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$_CatagoriesDeleted implements _CatagoriesDeleted {
  const _$_CatagoriesDeleted();

  @override
  String toString() {
    return 'ProductFormEvent.catagoriesDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatagoriesDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagoriesDeleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoriesDeleted != null) {
      return catagoriesDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagoriesDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoriesDeleted != null) {
      return catagoriesDeleted(this);
    }
    return orElse();
  }
}

abstract class _CatagoriesDeleted implements ProductFormEvent {
  const factory _CatagoriesDeleted() = _$_CatagoriesDeleted;
}

class _$_CatagoryAdded implements _CatagoryAdded {
  const _$_CatagoryAdded();

  @override
  String toString() {
    return 'ProductFormEvent.catagoryAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatagoryAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagoryAdded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoryAdded != null) {
      return catagoryAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagoryAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoryAdded != null) {
      return catagoryAdded(this);
    }
    return orElse();
  }
}

abstract class _CatagoryAdded implements ProductFormEvent {
  const factory _CatagoryAdded() = _$_CatagoryAdded;
}

class _$_CatagorySelected implements _CatagorySelected {
  const _$_CatagorySelected(this.catagory) : assert(catagory != null);

  @override
  final String catagory;

  @override
  String toString() {
    return 'ProductFormEvent.catagorySelected(catagory: $catagory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagorySelected &&
            (identical(other.catagory, catagory) ||
                const DeepCollectionEquality()
                    .equals(other.catagory, catagory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(catagory);

  @override
  _$_CatagorySelected copyWith({
    Object catagory = freezed,
  }) {
    return _$_CatagorySelected(
      catagory == freezed ? this.catagory : catagory as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagorySelected(catagory);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagorySelected != null) {
      return catagorySelected(catagory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return catagorySelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagorySelected != null) {
      return catagorySelected(this);
    }
    return orElse();
  }
}

abstract class _CatagorySelected implements ProductFormEvent {
  const factory _CatagorySelected(String catagory) = _$_CatagorySelected;

  String get catagory;

  _CatagorySelected copyWith({String catagory});
}

class _$_ImageAdded implements _ImageAdded {
  const _$_ImageAdded();

  @override
  String toString() {
    return 'ProductFormEvent.imageAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imageAdded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageAdded != null) {
      return imageAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imageAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageAdded != null) {
      return imageAdded(this);
    }
    return orElse();
  }
}

abstract class _ImageAdded implements ProductFormEvent {
  const factory _ImageAdded() = _$_ImageAdded;
}

class _$_ImageSelected implements _ImageSelected {
  const _$_ImageSelected(this.imageProperties)
      : assert(imageProperties != null);

  @override
  final ImageProperties imageProperties;

  @override
  String toString() {
    return 'ProductFormEvent.imageSelected(imageProperties: $imageProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageSelected &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties);

  @override
  _$_ImageSelected copyWith({
    Object imageProperties = freezed,
  }) {
    return _$_ImageSelected(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as ImageProperties,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imageSelected(imageProperties);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageSelected != null) {
      return imageSelected(imageProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageSelected implements ProductFormEvent {
  const factory _ImageSelected(ImageProperties imageProperties) =
      _$_ImageSelected;

  ImageProperties get imageProperties;

  _ImageSelected copyWith({ImageProperties imageProperties});
}

class _$_ImagesRecived implements _ImagesRecived {
  const _$_ImagesRecived(this.imageProperties)
      : assert(imageProperties != null);

  @override
  final KtList<ImageProperties> imageProperties;

  @override
  String toString() {
    return 'ProductFormEvent.imagesRecived(imageProperties: $imageProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesRecived &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties);

  @override
  _$_ImagesRecived copyWith({
    Object imageProperties = freezed,
  }) {
    return _$_ImagesRecived(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as KtList<ImageProperties>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imagesRecived(imageProperties);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesRecived != null) {
      return imagesRecived(imageProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imagesRecived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesRecived != null) {
      return imagesRecived(this);
    }
    return orElse();
  }
}

abstract class _ImagesRecived implements ProductFormEvent {
  const factory _ImagesRecived(KtList<ImageProperties> imageProperties) =
      _$_ImagesRecived;

  KtList<ImageProperties> get imageProperties;

  _ImagesRecived copyWith({KtList<ImageProperties> imageProperties});
}

class _$_PortraitSelected implements _PortraitSelected {
  const _$_PortraitSelected(this.imageProperties)
      : assert(imageProperties != null);

  @override
  final ImageProperties imageProperties;

  @override
  String toString() {
    return 'ProductFormEvent.portraitSelected(imageProperties: $imageProperties)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PortraitSelected &&
            (identical(other.imageProperties, imageProperties) ||
                const DeepCollectionEquality()
                    .equals(other.imageProperties, imageProperties)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imageProperties);

  @override
  _$_PortraitSelected copyWith({
    Object imageProperties = freezed,
  }) {
    return _$_PortraitSelected(
      imageProperties == freezed
          ? this.imageProperties
          : imageProperties as ImageProperties,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return portraitSelected(imageProperties);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (portraitSelected != null) {
      return portraitSelected(imageProperties);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return portraitSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (portraitSelected != null) {
      return portraitSelected(this);
    }
    return orElse();
  }
}

abstract class _PortraitSelected implements ProductFormEvent {
  const factory _PortraitSelected(ImageProperties imageProperties) =
      _$_PortraitSelected;

  ImageProperties get imageProperties;

  _PortraitSelected copyWith({ImageProperties imageProperties});
}

class _$_ChangeImagePosition implements _ChangeImagePosition {
  const _$_ChangeImagePosition(this.newPosition, this.lastPosition)
      : assert(newPosition != null),
        assert(lastPosition != null);

  @override
  final int newPosition;
  @override
  final int lastPosition;

  @override
  String toString() {
    return 'ProductFormEvent.changeImagePosition(newPosition: $newPosition, lastPosition: $lastPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeImagePosition &&
            (identical(other.newPosition, newPosition) ||
                const DeepCollectionEquality()
                    .equals(other.newPosition, newPosition)) &&
            (identical(other.lastPosition, lastPosition) ||
                const DeepCollectionEquality()
                    .equals(other.lastPosition, lastPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newPosition) ^
      const DeepCollectionEquality().hash(lastPosition);

  @override
  _$_ChangeImagePosition copyWith({
    Object newPosition = freezed,
    Object lastPosition = freezed,
  }) {
    return _$_ChangeImagePosition(
      newPosition == freezed ? this.newPosition : newPosition as int,
      lastPosition == freezed ? this.lastPosition : lastPosition as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return changeImagePosition(newPosition, lastPosition);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeImagePosition != null) {
      return changeImagePosition(newPosition, lastPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return changeImagePosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeImagePosition != null) {
      return changeImagePosition(this);
    }
    return orElse();
  }
}

abstract class _ChangeImagePosition implements ProductFormEvent {
  const factory _ChangeImagePosition(int newPosition, int lastPosition) =
      _$_ChangeImagePosition;

  int get newPosition;
  int get lastPosition;

  _ChangeImagePosition copyWith({int newPosition, int lastPosition});
}

class _$_ImagesFetched implements _ImagesFetched {
  const _$_ImagesFetched(this.images) : assert(images != null);

  @override
  final List<ImageProperties> images;

  @override
  String toString() {
    return 'ProductFormEvent.imagesFetched(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImagesFetched &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  _$_ImagesFetched copyWith({
    Object images = freezed,
  }) {
    return _$_ImagesFetched(
      images == freezed ? this.images : images as List<ImageProperties>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Product> initialProductOption),
    @required Result nameChanged(String nameStr),
    @required Result descriptionChanged(String descStr),
    @required Result hypeDescriptionChanged(String hypeDescStr),
    @required Result totalAmountChanged(int totalNum),
    @required Result soldAmountChanged(int soldNum),
    @required Result imagesChanged(KtList<ImageItemPrimitive> images),
    @required
        Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    @required Result saved(),
    @required Result catagoriesDeleted(),
    @required Result catagoryAdded(),
    @required Result catagorySelected(String catagory),
    @required Result imageAdded(),
    @required Result imageSelected(ImageProperties imageProperties),
    @required Result imagesRecived(KtList<ImageProperties> imageProperties),
    @required Result portraitSelected(ImageProperties imageProperties),
    @required Result changeImagePosition(int newPosition, int lastPosition),
    @required Result imagesFetched(List<ImageProperties> images),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imagesFetched(images);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Product> initialProductOption),
    Result nameChanged(String nameStr),
    Result descriptionChanged(String descStr),
    Result hypeDescriptionChanged(String hypeDescStr),
    Result totalAmountChanged(int totalNum),
    Result soldAmountChanged(int soldNum),
    Result imagesChanged(KtList<ImageItemPrimitive> images),
    Result catagoriesChanged(KtList<CatagoryItemPrimitive> catagories),
    Result saved(),
    Result catagoriesDeleted(),
    Result catagoryAdded(),
    Result catagorySelected(String catagory),
    Result imageAdded(),
    Result imageSelected(ImageProperties imageProperties),
    Result imagesRecived(KtList<ImageProperties> imageProperties),
    Result portraitSelected(ImageProperties imageProperties),
    Result changeImagePosition(int newPosition, int lastPosition),
    Result imagesFetched(List<ImageProperties> images),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesFetched != null) {
      return imagesFetched(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    @required Result totalAmountChanged(_TotalAmountChanged value),
    @required Result soldAmountChanged(_SoldAmountChanged value),
    @required Result imagesChanged(_ImagesChanged value),
    @required Result catagoriesChanged(_CatagoriesChanged value),
    @required Result saved(_Saved value),
    @required Result catagoriesDeleted(_CatagoriesDeleted value),
    @required Result catagoryAdded(_CatagoryAdded value),
    @required Result catagorySelected(_CatagorySelected value),
    @required Result imageAdded(_ImageAdded value),
    @required Result imageSelected(_ImageSelected value),
    @required Result imagesRecived(_ImagesRecived value),
    @required Result portraitSelected(_PortraitSelected value),
    @required Result changeImagePosition(_ChangeImagePosition value),
    @required Result imagesFetched(_ImagesFetched value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(hypeDescriptionChanged != null);
    assert(totalAmountChanged != null);
    assert(soldAmountChanged != null);
    assert(imagesChanged != null);
    assert(catagoriesChanged != null);
    assert(saved != null);
    assert(catagoriesDeleted != null);
    assert(catagoryAdded != null);
    assert(catagorySelected != null);
    assert(imageAdded != null);
    assert(imageSelected != null);
    assert(imagesRecived != null);
    assert(portraitSelected != null);
    assert(changeImagePosition != null);
    assert(imagesFetched != null);
    return imagesFetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result hypeDescriptionChanged(_HypeDescriptionChanged value),
    Result totalAmountChanged(_TotalAmountChanged value),
    Result soldAmountChanged(_SoldAmountChanged value),
    Result imagesChanged(_ImagesChanged value),
    Result catagoriesChanged(_CatagoriesChanged value),
    Result saved(_Saved value),
    Result catagoriesDeleted(_CatagoriesDeleted value),
    Result catagoryAdded(_CatagoryAdded value),
    Result catagorySelected(_CatagorySelected value),
    Result imageAdded(_ImageAdded value),
    Result imageSelected(_ImageSelected value),
    Result imagesRecived(_ImagesRecived value),
    Result portraitSelected(_PortraitSelected value),
    Result changeImagePosition(_ChangeImagePosition value),
    Result imagesFetched(_ImagesFetched value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imagesFetched != null) {
      return imagesFetched(this);
    }
    return orElse();
  }
}

abstract class _ImagesFetched implements ProductFormEvent {
  const factory _ImagesFetched(List<ImageProperties> images) = _$_ImagesFetched;

  List<ImageProperties> get images;

  _ImagesFetched copyWith({List<ImageProperties> images});
}

mixin _$ProductFormState {
  Product get product;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  bool get catagoryEditing;
  bool get catagorySaving;
  bool get imageEditing;
  bool get imageSaving;
  List<String> get choosenCatagories;
  List<ImageProperties> get selectedImages;
  List<ImageProperties> get fetchedImages;
  ImageProperties get portraitImage;
  Option<Either<CatagoryFailure, Unit>> get saveFailureOrCatagoryOption;
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption;

  ProductFormState copyWith(
      {Product product,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      bool catagoryEditing,
      bool catagorySaving,
      bool imageEditing,
      bool imageSaving,
      List<String> choosenCatagories,
      List<ImageProperties> selectedImages,
      List<ImageProperties> fetchedImages,
      ImageProperties portraitImage,
      Option<Either<CatagoryFailure, Unit>> saveFailureOrCatagoryOption,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});
}

class _$ProductFormStateTearOff {
  const _$ProductFormStateTearOff();

  _ProductFormState call(
      {@required
          Product product,
      @required
          bool showErrorMessage,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool catagoryEditing,
      @required
          bool catagorySaving,
      @required
          bool imageEditing,
      @required
          bool imageSaving,
      @required
          List<String> choosenCatagories,
      @required
          List<ImageProperties> selectedImages,
      @required
          List<ImageProperties> fetchedImages,
      @required
          ImageProperties portraitImage,
      @required
          Option<Either<CatagoryFailure, Unit>> saveFailureOrCatagoryOption,
      @required
          Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ProductFormState(
      product: product,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      catagoryEditing: catagoryEditing,
      catagorySaving: catagorySaving,
      imageEditing: imageEditing,
      imageSaving: imageSaving,
      choosenCatagories: choosenCatagories,
      selectedImages: selectedImages,
      fetchedImages: fetchedImages,
      portraitImage: portraitImage,
      saveFailureOrCatagoryOption: saveFailureOrCatagoryOption,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

const $ProductFormState = _$ProductFormStateTearOff();

class _$_ProductFormState implements _ProductFormState {
  const _$_ProductFormState(
      {@required this.product,
      @required this.showErrorMessage,
      @required this.isEditing,
      @required this.isSaving,
      @required this.catagoryEditing,
      @required this.catagorySaving,
      @required this.imageEditing,
      @required this.imageSaving,
      @required this.choosenCatagories,
      @required this.selectedImages,
      @required this.fetchedImages,
      @required this.portraitImage,
      @required this.saveFailureOrCatagoryOption,
      @required this.saveFailureOrSuccessOption})
      : assert(product != null),
        assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(catagoryEditing != null),
        assert(catagorySaving != null),
        assert(imageEditing != null),
        assert(imageSaving != null),
        assert(choosenCatagories != null),
        assert(selectedImages != null),
        assert(fetchedImages != null),
        assert(portraitImage != null),
        assert(saveFailureOrCatagoryOption != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Product product;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool catagoryEditing;
  @override
  final bool catagorySaving;
  @override
  final bool imageEditing;
  @override
  final bool imageSaving;
  @override
  final List<String> choosenCatagories;
  @override
  final List<ImageProperties> selectedImages;
  @override
  final List<ImageProperties> fetchedImages;
  @override
  final ImageProperties portraitImage;
  @override
  final Option<Either<CatagoryFailure, Unit>> saveFailureOrCatagoryOption;
  @override
  final Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductFormState(product: $product, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, catagoryEditing: $catagoryEditing, catagorySaving: $catagorySaving, imageEditing: $imageEditing, imageSaving: $imageSaving, choosenCatagories: $choosenCatagories, selectedImages: $selectedImages, fetchedImages: $fetchedImages, portraitImage: $portraitImage, saveFailureOrCatagoryOption: $saveFailureOrCatagoryOption, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductFormState &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.catagoryEditing, catagoryEditing) ||
                const DeepCollectionEquality()
                    .equals(other.catagoryEditing, catagoryEditing)) &&
            (identical(other.catagorySaving, catagorySaving) ||
                const DeepCollectionEquality()
                    .equals(other.catagorySaving, catagorySaving)) &&
            (identical(other.imageEditing, imageEditing) ||
                const DeepCollectionEquality()
                    .equals(other.imageEditing, imageEditing)) &&
            (identical(other.imageSaving, imageSaving) ||
                const DeepCollectionEquality()
                    .equals(other.imageSaving, imageSaving)) &&
            (identical(other.choosenCatagories, choosenCatagories) ||
                const DeepCollectionEquality()
                    .equals(other.choosenCatagories, choosenCatagories)) &&
            (identical(other.selectedImages, selectedImages) ||
                const DeepCollectionEquality()
                    .equals(other.selectedImages, selectedImages)) &&
            (identical(other.fetchedImages, fetchedImages) ||
                const DeepCollectionEquality()
                    .equals(other.fetchedImages, fetchedImages)) &&
            (identical(other.portraitImage, portraitImage) ||
                const DeepCollectionEquality()
                    .equals(other.portraitImage, portraitImage)) &&
            (identical(other.saveFailureOrCatagoryOption,
                    saveFailureOrCatagoryOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrCatagoryOption,
                    saveFailureOrCatagoryOption)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(catagoryEditing) ^
      const DeepCollectionEquality().hash(catagorySaving) ^
      const DeepCollectionEquality().hash(imageEditing) ^
      const DeepCollectionEquality().hash(imageSaving) ^
      const DeepCollectionEquality().hash(choosenCatagories) ^
      const DeepCollectionEquality().hash(selectedImages) ^
      const DeepCollectionEquality().hash(fetchedImages) ^
      const DeepCollectionEquality().hash(portraitImage) ^
      const DeepCollectionEquality().hash(saveFailureOrCatagoryOption) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$_ProductFormState copyWith({
    Object product = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object catagoryEditing = freezed,
    Object catagorySaving = freezed,
    Object imageEditing = freezed,
    Object imageSaving = freezed,
    Object choosenCatagories = freezed,
    Object selectedImages = freezed,
    Object fetchedImages = freezed,
    Object portraitImage = freezed,
    Object saveFailureOrCatagoryOption = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _$_ProductFormState(
      product: product == freezed ? this.product : product as Product,
      showErrorMessage: showErrorMessage == freezed
          ? this.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? this.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? this.isSaving : isSaving as bool,
      catagoryEditing: catagoryEditing == freezed
          ? this.catagoryEditing
          : catagoryEditing as bool,
      catagorySaving: catagorySaving == freezed
          ? this.catagorySaving
          : catagorySaving as bool,
      imageEditing:
          imageEditing == freezed ? this.imageEditing : imageEditing as bool,
      imageSaving:
          imageSaving == freezed ? this.imageSaving : imageSaving as bool,
      choosenCatagories: choosenCatagories == freezed
          ? this.choosenCatagories
          : choosenCatagories as List<String>,
      selectedImages: selectedImages == freezed
          ? this.selectedImages
          : selectedImages as List<ImageProperties>,
      fetchedImages: fetchedImages == freezed
          ? this.fetchedImages
          : fetchedImages as List<ImageProperties>,
      portraitImage: portraitImage == freezed
          ? this.portraitImage
          : portraitImage as ImageProperties,
      saveFailureOrCatagoryOption: saveFailureOrCatagoryOption == freezed
          ? this.saveFailureOrCatagoryOption
          : saveFailureOrCatagoryOption
              as Option<Either<CatagoryFailure, Unit>>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? this.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ProductFailure, Unit>>,
    );
  }
}

abstract class _ProductFormState implements ProductFormState {
  const factory _ProductFormState(
      {@required
          Product product,
      @required
          bool showErrorMessage,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          bool catagoryEditing,
      @required
          bool catagorySaving,
      @required
          bool imageEditing,
      @required
          bool imageSaving,
      @required
          List<String> choosenCatagories,
      @required
          List<ImageProperties> selectedImages,
      @required
          List<ImageProperties> fetchedImages,
      @required
          ImageProperties portraitImage,
      @required
          Option<Either<CatagoryFailure, Unit>> saveFailureOrCatagoryOption,
      @required
          Option<Either<ProductFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ProductFormState;

  @override
  Product get product;
  @override
  bool get showErrorMessage;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get catagoryEditing;
  @override
  bool get catagorySaving;
  @override
  bool get imageEditing;
  @override
  bool get imageSaving;
  @override
  List<String> get choosenCatagories;
  @override
  List<ImageProperties> get selectedImages;
  @override
  List<ImageProperties> get fetchedImages;
  @override
  ImageProperties get portraitImage;
  @override
  Option<Either<CatagoryFailure, Unit>> get saveFailureOrCatagoryOption;
  @override
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption;

  @override
  _ProductFormState copyWith(
      {Product product,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      bool catagoryEditing,
      bool catagorySaving,
      bool imageEditing,
      bool imageSaving,
      List<String> choosenCatagories,
      List<ImageProperties> selectedImages,
      List<ImageProperties> fetchedImages,
      ImageProperties portraitImage,
      Option<Either<CatagoryFailure, Unit>> saveFailureOrCatagoryOption,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});
}
