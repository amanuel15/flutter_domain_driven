import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'catagory_watcher_event.dart';
part 'catagory_watcher_state.dart';

part 'catagory_watcher_bloc.freezed.dart';

class CatagoryWatcherBloc extends Bloc<CatagoryWatcherEvent, CatagoryWatcherState> {
  final IProductRepository _catagoryRepository;

  CatagoryWatcherBloc(this._catagoryRepository);

  StreamSubscription<Either<CatagoryFailure, KtList<CatagoryItem>>> _catagoryStreamSubscription;

  @override
  CatagoryWatcherState get initialState => const CatagoryWatcherState.initial();

  @override
  Stream<CatagoryWatcherState> mapEventToState(
    CatagoryWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const CatagoryWatcherState.loadInProgress();
        await _catagoryStreamSubscription?.cancel();
        // TODO: check 
        _catagoryStreamSubscription = _catagoryRepository
            .watchAllCatagories()
            .listen((catagory) => add(CatagoryWatcherEvent.catagoryReceived(catagory)));
      }, 
      watchUnCompletedStarted: (e) async* {
        yield const CatagoryWatcherState.loadInProgress();
        await _catagoryStreamSubscription?.cancel();
        _catagoryStreamSubscription = _catagoryRepository
            .watchUncompletedCatagories()
            .listen((catagory) => add(CatagoryWatcherEvent.catagoryReceived(catagory)));
      }, 
      catagoryReceived: (e) async* {
        yield e.failureOrCatagory.fold(
          (f) => CatagoryWatcherState.loadFailure(f),
          (catagories) => CatagoryWatcherState.loadSuccess(catagories),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _catagoryStreamSubscription.cancel();
    return super.close();
  }
}
