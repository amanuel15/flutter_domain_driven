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
class ProductWathcerBloc
    extends Bloc<ProductWathcerEvent, ProductWathcerState> {
  final IProductRepository _productRepository;
  KtList<Product> oldProductsList;

  ProductWathcerBloc(this._productRepository);

  //StreamSubscription<Either<ProductFailure,KtList<Product>>> _productStreamSubscription;

  @override
  ProductWathcerState get initialState => const ProductWathcerState.initial();

  @override
  Stream<ProductWathcerState> mapEventToState(
    ProductWathcerEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ProductWathcerState.loadInProgress();
        // yield state.copyWith(
        //   loadingInProgress: true,
        // );
        //await _productStreamSubscription?.cancel();
        _productRepository.watchAll().then(
            (products) => add(ProductWathcerEvent.productRecived(products)));
      },
      watchUncompletedStarted: (e) async* {
        yield const ProductWathcerState.loadInProgress();
        // yield state.copyWith(
        //   loadingInProgress: true,
        // );
        //await _productStreamSubscription?.cancel();
        _productRepository.watchUncompleted().then(
            (products) => add(ProductWathcerEvent.productRecived(products)));
      },
      productRecived: (e) async* {
        // yield e.failureOrProducts.fold(
        //   (f) => ProductWathcerState.loadFailure(f),
        //   (products) => ProductWathcerState.loadSuccess(products),
        // );
        // TODO: check if this actually send the combination of the old and the new list
        yield e.failureOrProducts.fold(
          (f) => ProductWathcerState.loadFailure(f),
          (products) {
            if (oldProductsList.isNotEmpty()) {
              oldProductsList = oldProductsList + products;
            } else {
              oldProductsList = products;
            }
            return ProductWathcerState.loadSuccess(oldProductsList);
          },
        );
        // yield state.copyWith(
        //   productFailureOrSuccessOption: some(e.failureOrProducts),
        // );
        //final oldList = state.productList;
        // yield e.failureOrProducts.fold(
        //   (f) => state.copyWith(loadFailure: f),
        //   (products) => state.copyWith(loadSuccess: state.loadSuccess + products),
        // );
      },
    );
  }

  // @override
  // Future<void> close() async {
  //   await _productStreamSubscription.cancel();
  //   return super.close();
  // }
}
