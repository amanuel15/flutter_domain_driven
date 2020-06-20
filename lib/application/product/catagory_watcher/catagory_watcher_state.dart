part of 'catagory_watcher_bloc.dart';

@freezed
abstract class CatagoryWatcherState with _$CatagoryWatcherState {
  const factory CatagoryWatcherState.initial() = Initial;
  const factory CatagoryWatcherState.loadInProgress() = DataTransferInProgress;
  const factory CatagoryWatcherState.loadSuccess(KtList<CatagoryItem> catagories) = LoadSuccess;
  const factory CatagoryWatcherState.loadFailure(CatagoryFailure catagoryFailure) = LoadFailure;
}
