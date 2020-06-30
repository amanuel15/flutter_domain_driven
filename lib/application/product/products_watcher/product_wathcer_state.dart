part of 'product_wathcer_bloc.dart';

@freezed
abstract class ProductWathcerState with _$ProductWathcerState {
  //KtList<Product> get productList;
  // TODO: make it more like signin form state make LoadFailure failure Option...
  const factory ProductWathcerState.initial() = Initial;
  const factory ProductWathcerState.loadInProgress() = LoadInProgress;
  const factory ProductWathcerState.loadSuccess(KtList<Product> products) = LoadSuccess;
  const factory ProductWathcerState.loadFailure(ProductFailure productFailure) = LoadFailure;
}
