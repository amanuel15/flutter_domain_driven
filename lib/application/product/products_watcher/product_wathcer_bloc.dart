import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
  List<Product> oldProductsList = [];

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
        _productRepository.watchAll().then(
            (products) => add(ProductWathcerEvent.productRecived(products)));
      },
      watchUncompletedStarted: (e) async* {
        //yield const ProductWathcerState.loadInProgress();
        //await _productStreamSubscription?.cancel();
        _productRepository.watchUncompleted().then(
            (products) => add(ProductWathcerEvent.productRecived(products)));
      },
      productRecived: (e) async* {
        // TODO: check if this actually send the combination of the old and the new list
        print('product recived');
        yield e.failureOrProducts.fold(
          (f) => ProductWathcerState.loadFailure(f),
          (products) {
            if (oldProductsList.isNotEmpty) {
              oldProductsList = oldProductsList + products.asList();
              print('\n old Is full ${oldProductsList.length}');
            } else {
              print('\n old is empty');
              oldProductsList = products.asList();
            }
            //print('\n will return ${oldProductsList}');
            return ProductWathcerState.loadSuccess(
                oldProductsList.toImmutableList());
          },
        );
      },
    );
  }

  // @override
  // Future<void> close() async {
  //   await _productStreamSubscription.cancel();
  //   return super.close();
  // }
}
