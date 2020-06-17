// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'product_wathcer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ProductWathcerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchUncompletedStarted(),
    @required
        Result productRecived(
            Either<ProductFailure, KtList<Product>> failureOrProducts),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUncompletedStarted(),
    Result productRecived(
        Either<ProductFailure, KtList<Product>> failureOrProducts),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUncompletedStarted(_WatchUncompletedStarted value),
    @required Result productRecived(_ProductRecived value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUncompletedStarted(_WatchUncompletedStarted value),
    Result productRecived(_ProductRecived value),
    @required Result orElse(),
  });
}

class _$ProductWathcerEventTearOff {
  const _$ProductWathcerEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _WatchUncompletedStarted watchUncompletedStarted() {
    return const _WatchUncompletedStarted();
  }

  _ProductRecived productRecived(
      Either<ProductFailure, KtList<Product>> failureOrProducts) {
    return _ProductRecived(
      failureOrProducts,
    );
  }
}

const $ProductWathcerEvent = _$ProductWathcerEventTearOff();

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ProductWathcerEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchUncompletedStarted(),
    @required
        Result productRecived(
            Either<ProductFailure, KtList<Product>> failureOrProducts),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(productRecived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUncompletedStarted(),
    Result productRecived(
        Either<ProductFailure, KtList<Product>> failureOrProducts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUncompletedStarted(_WatchUncompletedStarted value),
    @required Result productRecived(_ProductRecived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(productRecived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUncompletedStarted(_WatchUncompletedStarted value),
    Result productRecived(_ProductRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ProductWathcerEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

class _$_WatchUncompletedStarted implements _WatchUncompletedStarted {
  const _$_WatchUncompletedStarted();

  @override
  String toString() {
    return 'ProductWathcerEvent.watchUncompletedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUncompletedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchUncompletedStarted(),
    @required
        Result productRecived(
            Either<ProductFailure, KtList<Product>> failureOrProducts),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(productRecived != null);
    return watchUncompletedStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUncompletedStarted(),
    Result productRecived(
        Either<ProductFailure, KtList<Product>> failureOrProducts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUncompletedStarted(_WatchUncompletedStarted value),
    @required Result productRecived(_ProductRecived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(productRecived != null);
    return watchUncompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUncompletedStarted(_WatchUncompletedStarted value),
    Result productRecived(_ProductRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchUncompletedStarted != null) {
      return watchUncompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompletedStarted implements ProductWathcerEvent {
  const factory _WatchUncompletedStarted() = _$_WatchUncompletedStarted;
}

class _$_ProductRecived implements _ProductRecived {
  const _$_ProductRecived(this.failureOrProducts)
      : assert(failureOrProducts != null);

  @override
  final Either<ProductFailure, KtList<Product>> failureOrProducts;

  @override
  String toString() {
    return 'ProductWathcerEvent.productRecived(failureOrProducts: $failureOrProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductRecived &&
            (identical(other.failureOrProducts, failureOrProducts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProducts, failureOrProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProducts);

  @override
  _$_ProductRecived copyWith({
    Object failureOrProducts = freezed,
  }) {
    return _$_ProductRecived(
      failureOrProducts == freezed
          ? this.failureOrProducts
          : failureOrProducts as Either<ProductFailure, KtList<Product>>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchUncompletedStarted(),
    @required
        Result productRecived(
            Either<ProductFailure, KtList<Product>> failureOrProducts),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(productRecived != null);
    return productRecived(failureOrProducts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUncompletedStarted(),
    Result productRecived(
        Either<ProductFailure, KtList<Product>> failureOrProducts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productRecived != null) {
      return productRecived(failureOrProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUncompletedStarted(_WatchUncompletedStarted value),
    @required Result productRecived(_ProductRecived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUncompletedStarted != null);
    assert(productRecived != null);
    return productRecived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUncompletedStarted(_WatchUncompletedStarted value),
    Result productRecived(_ProductRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productRecived != null) {
      return productRecived(this);
    }
    return orElse();
  }
}

abstract class _ProductRecived implements ProductWathcerEvent {
  const factory _ProductRecived(
          Either<ProductFailure, KtList<Product>> failureOrProducts) =
      _$_ProductRecived;

  Either<ProductFailure, KtList<Product>> get failureOrProducts;

  _ProductRecived copyWith(
      {Either<ProductFailure, KtList<Product>> failureOrProducts});
}

mixin _$ProductWathcerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Product> products),
    @required Result loadFailure(ProductFailure productFailure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Product> products),
    Result loadFailure(ProductFailure productFailure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

class _$ProductWathcerStateTearOff {
  const _$ProductWathcerStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(KtList<Product> products) {
    return LoadSuccess(
      products,
    );
  }

  LoadFailure loadFailure(ProductFailure productFailure) {
    return LoadFailure(
      productFailure,
    );
  }
}

const $ProductWathcerState = _$ProductWathcerStateTearOff();

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProductWathcerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Product> products),
    @required Result loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Product> products),
    Result loadFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductWathcerState {
  const factory Initial() = _$Initial;
}

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'ProductWathcerState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Product> products),
    @required Result loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Product> products),
    Result loadFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements ProductWathcerState {
  const factory LoadInProgress() = _$LoadInProgress;
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.products) : assert(products != null);

  @override
  final KtList<Product> products;

  @override
  String toString() {
    return 'ProductWathcerState.loadSuccess(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @override
  _$LoadSuccess copyWith({
    Object products = freezed,
  }) {
    return _$LoadSuccess(
      products == freezed ? this.products : products as KtList<Product>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Product> products),
    @required Result loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(products);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Product> products),
    Result loadFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ProductWathcerState {
  const factory LoadSuccess(KtList<Product> products) = _$LoadSuccess;

  KtList<Product> get products;

  LoadSuccess copyWith({KtList<Product> products});
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.productFailure) : assert(productFailure != null);

  @override
  final ProductFailure productFailure;

  @override
  String toString() {
    return 'ProductWathcerState.loadFailure(productFailure: $productFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.productFailure, productFailure) ||
                const DeepCollectionEquality()
                    .equals(other.productFailure, productFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productFailure);

  @override
  _$LoadFailure copyWith({
    Object productFailure = freezed,
  }) {
    return _$LoadFailure(
      productFailure == freezed
          ? this.productFailure
          : productFailure as ProductFailure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Product> products),
    @required Result loadFailure(ProductFailure productFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(productFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Product> products),
    Result loadFailure(ProductFailure productFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(productFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(LoadInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(LoadInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ProductWathcerState {
  const factory LoadFailure(ProductFailure productFailure) = _$LoadFailure;

  ProductFailure get productFailure;

  LoadFailure copyWith({ProductFailure productFailure});
}
