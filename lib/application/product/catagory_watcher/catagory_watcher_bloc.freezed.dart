// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'catagory_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CatagoryWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchUnCompletedStarted(),
    @required
        Result catagoryReceived(
            Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUnCompletedStarted(),
    Result catagoryReceived(
        Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    @required Result catagoryReceived(_CatagoryReceived value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    Result catagoryReceived(_CatagoryReceived value),
    @required Result orElse(),
  });
}

class _$CatagoryWatcherEventTearOff {
  const _$CatagoryWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _WatchUncompletedStarted watchUnCompletedStarted() {
    return const _WatchUncompletedStarted();
  }

  _CatagoryReceived catagoryReceived(
      Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory) {
    return _CatagoryReceived(
      failureOrCatagory,
    );
  }
}

const $CatagoryWatcherEvent = _$CatagoryWatcherEventTearOff();

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'CatagoryWatcherEvent.watchAllStarted()';
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
    @required Result watchUnCompletedStarted(),
    @required
        Result catagoryReceived(
            Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnCompletedStarted != null);
    assert(catagoryReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUnCompletedStarted(),
    Result catagoryReceived(
        Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
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
    @required Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    @required Result catagoryReceived(_CatagoryReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnCompletedStarted != null);
    assert(catagoryReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    Result catagoryReceived(_CatagoryReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements CatagoryWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

class _$_WatchUncompletedStarted implements _WatchUncompletedStarted {
  const _$_WatchUncompletedStarted();

  @override
  String toString() {
    return 'CatagoryWatcherEvent.watchUnCompletedStarted()';
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
    @required Result watchUnCompletedStarted(),
    @required
        Result catagoryReceived(
            Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnCompletedStarted != null);
    assert(catagoryReceived != null);
    return watchUnCompletedStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUnCompletedStarted(),
    Result catagoryReceived(
        Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchUnCompletedStarted != null) {
      return watchUnCompletedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    @required Result catagoryReceived(_CatagoryReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnCompletedStarted != null);
    assert(catagoryReceived != null);
    return watchUnCompletedStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    Result catagoryReceived(_CatagoryReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchUnCompletedStarted != null) {
      return watchUnCompletedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUncompletedStarted implements CatagoryWatcherEvent {
  const factory _WatchUncompletedStarted() = _$_WatchUncompletedStarted;
}

class _$_CatagoryReceived implements _CatagoryReceived {
  const _$_CatagoryReceived(this.failureOrCatagory)
      : assert(failureOrCatagory != null);

  @override
  final Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory;

  @override
  String toString() {
    return 'CatagoryWatcherEvent.catagoryReceived(failureOrCatagory: $failureOrCatagory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatagoryReceived &&
            (identical(other.failureOrCatagory, failureOrCatagory) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCatagory, failureOrCatagory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrCatagory);

  @override
  _$_CatagoryReceived copyWith({
    Object failureOrCatagory = freezed,
  }) {
    return _$_CatagoryReceived(
      failureOrCatagory == freezed
          ? this.failureOrCatagory
          : failureOrCatagory as Either<CatagoryFailure, KtList<CatagoryItem>>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchUnCompletedStarted(),
    @required
        Result catagoryReceived(
            Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnCompletedStarted != null);
    assert(catagoryReceived != null);
    return catagoryReceived(failureOrCatagory);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchUnCompletedStarted(),
    Result catagoryReceived(
        Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoryReceived != null) {
      return catagoryReceived(failureOrCatagory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    @required Result catagoryReceived(_CatagoryReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnCompletedStarted != null);
    assert(catagoryReceived != null);
    return catagoryReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchUnCompletedStarted(_WatchUncompletedStarted value),
    Result catagoryReceived(_CatagoryReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (catagoryReceived != null) {
      return catagoryReceived(this);
    }
    return orElse();
  }
}

abstract class _CatagoryReceived implements CatagoryWatcherEvent {
  const factory _CatagoryReceived(
          Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory) =
      _$_CatagoryReceived;

  Either<CatagoryFailure, KtList<CatagoryItem>> get failureOrCatagory;

  _CatagoryReceived copyWith(
      {Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory});
}

mixin _$CatagoryWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CatagoryItem> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CatagoryItem> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

class _$CatagoryWatcherStateTearOff {
  const _$CatagoryWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(KtList<CatagoryItem> catagories) {
    return LoadSuccess(
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
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CatagoryItem> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
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
    Result loadSuccess(KtList<CatagoryItem> catagories),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class Initial implements CatagoryWatcherState {
  const factory Initial() = _$Initial;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'CatagoryWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CatagoryItem> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
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
    Result loadSuccess(KtList<CatagoryItem> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class DataTransferInProgress implements CatagoryWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.catagories) : assert(catagories != null);

  @override
  final KtList<CatagoryItem> catagories;

  @override
  String toString() {
    return 'CatagoryWatcherState.loadSuccess(catagories: $catagories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.catagories, catagories) ||
                const DeepCollectionEquality()
                    .equals(other.catagories, catagories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(catagories);

  @override
  _$LoadSuccess copyWith({
    Object catagories = freezed,
  }) {
    return _$LoadSuccess(
      catagories == freezed
          ? this.catagories
          : catagories as KtList<CatagoryItem>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CatagoryItem> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(catagories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CatagoryItem> catagories),
    Result loadFailure(CatagoryFailure catagoryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(catagories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class LoadSuccess implements CatagoryWatcherState {
  const factory LoadSuccess(KtList<CatagoryItem> catagories) = _$LoadSuccess;

  KtList<CatagoryItem> get catagories;

  LoadSuccess copyWith({KtList<CatagoryItem> catagories});
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
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<CatagoryItem> catagories),
    @required Result loadFailure(CatagoryFailure catagoryFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(catagoryFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<CatagoryItem> catagories),
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
    @required Result loadInProgress(DataTransferInProgress value),
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
    Result loadInProgress(DataTransferInProgress value),
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

abstract class LoadFailure implements CatagoryWatcherState {
  const factory LoadFailure(CatagoryFailure catagoryFailure) = _$LoadFailure;

  CatagoryFailure get catagoryFailure;

  LoadFailure copyWith({CatagoryFailure catagoryFailure});
}
