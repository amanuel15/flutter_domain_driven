part of 'catagory_watcher_bloc.dart';

@freezed
abstract class CatagoryWatcherState with _$CatagoryWatcherState {
  const factory CatagoryWatcherState.initial() = Initial;
  const factory CatagoryWatcherState.inProgress() = InProgress;
  const factory CatagoryWatcherState.loadSucess(
      KtList<CatagoryName> catagories) = LoadSucess;
  const factory CatagoryWatcherState.loadFailure(
      CatagoryFailure catagoryFailure) = LoadFailure;
}
