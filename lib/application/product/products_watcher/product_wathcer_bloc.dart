import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/notes/note_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'product_wathcer_event.dart';
part 'product_wathcer_state.dart';

part 'product_wathcer_bloc.freezed.dart';

@injectable
class ProductWathcerBloc extends Bloc<ProductWathcerEvent, ProductWathcerState> {
  final IProductRepository _productRepository;

  ProductWathcerBloc(this._productRepository);

  StreamSubscription<Either<ProductFailure,KtList<Product>>> _productStreamSubscription;

  @override
  ProductWathcerState get initialState => const ProductWathcerState.initial();

  @override
  Stream<ProductWathcerState> mapEventToState(
    ProductWathcerEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ProductWathcerState.loadInProgress();
        await _productStreamSubscription?.cancel();
        _productStreamSubscription = _productRepository
            .watchAll()
            .listen((products) => add(ProductWathcerEvent.productRecived(products)));
      }, 
      watchUncompletedStarted: (e) async* {
        yield const ProductWathcerState.loadInProgress();
        await _productStreamSubscription?.cancel();
        _productStreamSubscription = _productRepository
            .watchUncompleted()
            .listen((products) => add(ProductWathcerEvent.productRecived(products)));
      },
      productRecived: (e) async* {
        yield e.failureOrProducts.fold(
          (f) => ProductWathcerState.loadFailure(f), 
          (products) => ProductWathcerState.loadSuccess(products),
        );
      }, 
    );
  }

  @override
  Future<void> close() async {
    await _productStreamSubscription.cancel();
    return super.close();
  }
}
