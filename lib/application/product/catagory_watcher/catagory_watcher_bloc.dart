import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_item.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'catagory_watcher_event.dart';
part 'catagory_watcher_state.dart';

part 'catagory_watcher_bloc.freezed.dart';

@injectable
class CatagoryWatcherBloc
    extends Bloc<CatagoryWatcherEvent, CatagoryWatcherState> {
  final IProductRepository _catagoryRepository;

  CatagoryWatcherBloc(this._catagoryRepository);

  @override
  CatagoryWatcherState get initialState => const CatagoryWatcherState.initial();

  @override
  Stream<CatagoryWatcherState> mapEventToState(
    CatagoryWatcherEvent event,
  ) async* {
    yield* event.map(
      watchCatagoriesStarted: (e) async* {
        print('startd');
        yield const CatagoryWatcherState.inProgress();
        _catagoryRepository.watchAllCatagories().then((catagories) =>
            add(CatagoryWatcherEvent.catagoryRecived(catagories)));
      },
      watchSubCatagories: (e) async* {
        print('watch sub ${e.path}');
        yield const CatagoryWatcherState.inProgress();
        _catagoryRepository.watchAllCatagories(path: e.path).then(
            (catagories) =>
                add(CatagoryWatcherEvent.catagoryRecived(catagories)));
      },
      catagoryRecived: (e) async* {
        yield e.failureOrCatagory.fold(
          (f) => CatagoryWatcherState.loadFailure(f),
          (catagoryList) {
            return CatagoryWatcherState.loadSucess(catagoryList);
          },
        );
      },
    );
  }
}
