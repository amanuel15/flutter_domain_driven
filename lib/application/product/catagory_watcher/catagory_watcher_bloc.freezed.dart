// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catagory_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CatagoryWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchCatagoriesStarted(),
    @required Result watchSubCatagories(List<String> path),
    @required
        Result catagoryRecived(
            Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchCatagoriesStarted(),
    Result watchSubCatagories(List<String> path),
    Result catagoryRecived(
        Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    @required Result watchSubCatagories(_WatchSubCatagories value),
    @required Result catagoryRecived(_CatagoryRecived value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    Result watchSubCatagories(_WatchSubCatagories value),
    Result catagoryRecived(_CatagoryRecived value),
    @required Result orElse(),
  });
}

class _$CatagoryWatcherEventTearOff {
  const _$CatagoryWatcherEventTearOff();

  _WatchCatagoriesStarted watchCatagoriesStarted() {
    return const _WatchCatagoriesStarted();
  }

  _WatchSubCatagories watchSubCatagories(List<String> path) {
    return _WatchSubCatagories(
      path,
    );
  }

  _CatagoryRecived catagoryRecived(
      Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory) {
    return _CatagoryRecived(
      failureOrCatagory,
    );
  }
}

const $CatagoryWatcherEvent = _$CatagoryWatcherEventTearOff();

class _$_WatchCatagoriesStarted implements _WatchCatagoriesStarted {
  const _$_WatchCatagoriesStarted();

  @override
  String toString() {
    return 'CatagoryWatcherEvent.watchCatagoriesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchCatagoriesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchCatagoriesStarted(),
    @required Result watchSubCatagories(List<String> path),
    @required
        Result catagoryRecived(
            Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
  }) {
    assert(watchCatagoriesStarted != null);
    assert(watchSubCatagories != null);
    assert(catagoryRecived != null);
    return watchCatagoriesStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchCatagoriesStarted(),
    Result watchSubCatagories(List<String> path),
    Result catagoryRecived(
        Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchCatagoriesStarted != null) {
      return watchCatagoriesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    @required Result watchSubCatagories(_WatchSubCatagories value),
    @required Result catagoryRecived(_CatagoryRecived value),
  }) {
    assert(watchCatagoriesStarted != null);
    assert(watchSubCatagories != null);
    assert(catagoryRecived != null);
    return watchCatagoriesStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    Result watchSubCatagories(_WatchSubCatagories value),
    Result catagoryRecived(_CatagoryRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchCatagoriesStarted != null) {
      return watchCatagoriesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchCatagoriesStarted implements CatagoryWatcherEvent {
  const factory _WatchCatagoriesStarted() = _$_WatchCatagoriesStarted;
}

class _$_WatchSubCatagories implements _WatchSubCatagories {
  const _$_WatchSubCatagories(this.path) : assert(path != null);

  @override
  final List<String> path;

  @override
  String toString() {
    return 'CatagoryWatcherEvent.watchSubCatagories(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchSubCatagories &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @override
  _$_WatchSubCatagories copyWith({
    Object path = freezed,
  }) {
    return _$_WatchSubCatagories(
      path == freezed ? this.path : path as List<String>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchCatagoriesStarted(),
    @required Result watchSubCatagories(List<String> path),
    @required
        Result catagoryRecived(
            Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
  }) {
    assert(watchCatagoriesStarted != null);
    assert(watchSubCatagories != null);
    assert(catagoryRecived != null);
    return watchSubCatagories(path);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchCatagoriesStarted(),
    Result watchSubCatagories(List<String> path),
    Result catagoryRecived(
        Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSubCatagories != null) {
      return watchSubCatagories(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    @required Result watchSubCatagories(_WatchSubCatagories value),
    @required Result catagoryRecived(_CatagoryRecived value),
  }) {
    assert(watchCatagoriesStarted != null);
    assert(watchSubCatagories != null);
    assert(catagoryRecived != null);
    return watchSubCatagories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    Result watchSubCatagories(_WatchSubCatagories value),
    Result catagoryRecived(_CatagoryRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSubCatagories != null) {
      return watchSubCatagories(this);
    }
    return orElse();
  }
}

abstract class _WatchSubCatagories implements CatagoryWatcherEvent {
  const factory _WatchSubCatagories(List<String> path) = _$_WatchSubCatagories;

  List<String> get path;

  _WatchSubCatagories copyWith({List<String> path});
}

class _$_CatagoryRecived implements _CatagoryRecived {
  const _$_CatagoryRecived(this.failureOrCatagory)
      : assert(failureOrCatagory != null);

  @override
  final Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory;

  @override
  String toString() {
    return 'CatagoryWatcherEvent.catagoryRecived(failureOrCatagory: $failureOrCatagory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoryRecived &&
            (identical(other.failureOrCatagory, failureOrCatagory) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCatagory, failureOrCatagory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCatagory);

  @override
  _$_CatagoryRecived copyWith({
    Object failureOrCatagory = freezed,
  }) {
    return _$_CatagoryRecived(
      failureOrCatagory == freezed
          ? this.failureOrCatagory
          : failureOrCatagory as Either<CatagoryFailure, KtList<CatagoryName>>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchCatagoriesStarted(),
    @required Result watchSubCatagories(List<String> path),
    @required
        Result catagoryRecived(
            Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
  }) {
    assert(watchCatagoriesStarted != null);
    assert(watchSubCatagories != null);
    assert(catagoryRecived != null);
    return catagoryRecived(failureOrCatagory);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchCatagoriesStarted(),
    Result watchSubCatagories(List<String> path),
    Result catagoryRecived(
        Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoryRecived != null) {
      return catagoryRecived(failureOrCatagory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    @required Result watchSubCatagories(_WatchSubCatagories value),
    @required Result catagoryRecived(_CatagoryRecived value),
  }) {
    assert(watchCatagoriesStarted != null);
    assert(watchSubCatagories != null);
    assert(catagoryRecived != null);
    return catagoryRecived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchCatagoriesStarted(_WatchCatagoriesStarted value),
    Result watchSubCatagories(_WatchSubCatagories value),
    Result catagoryRecived(_CatagoryRecived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoryRecived != null) {
      return catagoryRecived(this);
    }
    return orElse();
  }
}

abstract class _CatagoryRecived implements CatagoryWatcherEvent {
  const factory _CatagoryRecived(
          Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory) =
      _$_CatagoryRecived;

  Either<CatagoryFailure, KtList<CatagoryName>> get failureOrCatagory;

  _CatagoryRecived copyWith(
      {Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory});
}

mixin _$CatagoryWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result loadSucess(KtList<CatagoryName> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result loadSucess(KtList<CatagoryName> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result inProgress(InProgress value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result inProgress(InProgress value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

class _$CatagoryWatcherStateTearOff {
  const _$CatagoryWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  InProgress inProgress() {
    return const InProgress();
  }

  LoadSucess loadSucess(KtList<CatagoryName> catagories) {
    return LoadSucess(
      catagories,
    );
  }

  LoadFailure loadFailure(CatagoryFailure catagoryFailure) {
    return LoadFailure(
      catagoryFailure,
    );
  }
}

const $CatagoryWatcherState = _$CatagoryWatcherStateTearOff();

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CatagoryWatcherState.initial()';
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
    @required Result inProgress(),
    @required Result loadSucess(KtList<CatagoryName> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result loadSucess(KtList<CatagoryName> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
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
    @required Result inProgress(InProgress value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result inProgress(InProgress value),
    Result loadSucess(LoadSucess value),
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

abstract class Initial implements CatagoryWatcherState {
  const factory Initial() = _$Initial;
}

class _$InProgress implements InProgress {
  const _$InProgress();

  @override
  String toString() {
    return 'CatagoryWatcherState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result loadSucess(KtList<CatagoryName> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result loadSucess(KtList<CatagoryName> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result inProgress(InProgress value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result inProgress(InProgress value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements CatagoryWatcherState {
  const factory InProgress() = _$InProgress;
}

class _$LoadSucess implements LoadSucess {
  const _$LoadSucess(this.catagories) : assert(catagories != null);

  @override
  final KtList<CatagoryName> catagories;

  @override
  String toString() {
    return 'CatagoryWatcherState.loadSucess(catagories: $catagories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSucess &&
            (identical(other.catagories, catagories) ||
                const DeepCollectionEquality()
                    .equals(other.catagories, catagories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(catagories);

  @override
  _$LoadSucess copyWith({
    Object catagories = freezed,
  }) {
    return _$LoadSucess(
      catagories == freezed
          ? this.catagories
          : catagories as KtList<CatagoryName>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result loadSucess(KtList<CatagoryName> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadSucess(catagories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result loadSucess(KtList<CatagoryName> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSucess != null) {
      return loadSucess(catagories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result inProgress(InProgress value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadSucess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result inProgress(InProgress value),
    Result loadSucess(LoadSucess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSucess != null) {
      return loadSucess(this);
    }
    return orElse();
  }
}

abstract class LoadSucess implements CatagoryWatcherState {
  const factory LoadSucess(KtList<CatagoryName> catagories) = _$LoadSucess;

  KtList<CatagoryName> get catagories;

  LoadSucess copyWith({KtList<CatagoryName> catagories});
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.catagoryFailure) : assert(catagoryFailure != null);

  @override
  final CatagoryFailure catagoryFailure;

  @override
  String toString() {
    return 'CatagoryWatcherState.loadFailure(catagoryFailure: $catagoryFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.catagoryFailure, catagoryFailure) ||
                const DeepCollectionEquality()
                    .equals(other.catagoryFailure, catagoryFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(catagoryFailure);

  @override
  _$LoadFailure copyWith({
    Object catagoryFailure = freezed,
  }) {
    return _$LoadFailure(
      catagoryFailure == freezed
          ? this.catagoryFailure
          : catagoryFailure as CatagoryFailure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result inProgress(),
    @required Result loadSucess(KtList<CatagoryName> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadFailure(catagoryFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result inProgress(),
    Result loadSucess(KtList<CatagoryName> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(catagoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result inProgress(InProgress value),
    @required Result loadSucess(LoadSucess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(inProgress != null);
    assert(loadSucess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result inProgress(InProgress value),
    Result loadSucess(LoadSucess value),
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

abstract class LoadFailure implements CatagoryWatcherState {
  const factory LoadFailure(CatagoryFailure catagoryFailure) = _$LoadFailure;

  CatagoryFailure get catagoryFailure;

  LoadFailure copyWith({CatagoryFailure catagoryFailure});
}
