part of 'catagory_watcher_bloc.dart';

@freezed
abstract class CatagoryWatcherEvent with _$CatagoryWatcherEvent {
  const factory CatagoryWatcherEvent.watchCatagoriesStarted() =
      _WatchCatagoriesStarted;
  const factory CatagoryWatcherEvent.watchSubCatagories(String path) =
      _WatchSubCatagories;
  const factory CatagoryWatcherEvent.catagoryRecived(
          Either<CatagoryFailure, KtList<CatagoryName>> failureOrCatagory) =
      _CatagoryRecived;
}
