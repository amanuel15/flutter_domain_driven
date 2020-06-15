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

mixin _$ProductFormState {
  Product get product;
  bool get showErrorMessage;
  bool get isEditing;
  bool get isSaving;
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption;

  ProductFormState copyWith(
      {Product product,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
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
          Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ProductFormState(
      product: product,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
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
      @required this.saveFailureOrSuccessOption})
      : assert(product != null),
        assert(showErrorMessage != null),
        assert(isEditing != null),
        assert(isSaving != null),
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
  final Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductFormState(product: $product, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
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
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$_ProductFormState copyWith({
    Object product = freezed,
    Object showErrorMessage = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _$_ProductFormState(
      product: product == freezed ? this.product : product as Product,
      showErrorMessage: showErrorMessage == freezed
          ? this.showErrorMessage
          : showErrorMessage as bool,
      isEditing: isEditing == freezed ? this.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? this.isSaving : isSaving as bool,
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
  Option<Either<ProductFailure, Unit>> get saveFailureOrSuccessOption;

  @override
  _ProductFormState copyWith(
      {Product product,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<ProductFailure, Unit>> saveFailureOrSuccessOption});
}
