part of 'catagory_watcher_bloc.dart';

@freezed
abstract class CatagoryWatcherEvent with _$CatagoryWatcherEvent {
  const factory CatagoryWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory CatagoryWatcherEvent.watchUnCompletedStarted() =
      _WatchUncompletedStarted;
  const factory CatagoryWatcherEvent.catagoryReceived(
          Either<CatagoryFailure, KtList<CatagoryItem>> failureOrCatagory) =
      _CatagoryReceived;
}
