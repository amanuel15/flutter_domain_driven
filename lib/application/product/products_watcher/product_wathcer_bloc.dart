import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/catagory_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/i_product_repository.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product_failure.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/value_objects.dart';
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
        _productRepository.watchUncompleted().then(
            (products) => add(ProductWathcerEvent.productRecived(products)));
      },
      productRecived: (e) async* {
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
            return ProductWathcerState.loadSuccess(
                oldProductsList.toImmutableList());
          },
        );
      },
      watchProducts: (e) async* {
        yield const ProductWathcerState.loadInProgress();
        _productRepository
            .watchAll(
              conditions: e.conditions,
              orderBys: e.orderBys,
              limit: e.limit,
            )
            .then((products) =>
                add(ProductWathcerEvent.productRecived(products)));
      },
      watchProductsContinued: (e) async* {
        yield const ProductWathcerState.loadInProgress();
        _productRepository
            .watchUncompleted(
              conditions: e.conditions,
              orderBys: e.orderBys,
              limit: e.limit,
            )
            .then((products) =>
                add(ProductWathcerEvent.productRecived(products)));
      },
    );
  }
}
