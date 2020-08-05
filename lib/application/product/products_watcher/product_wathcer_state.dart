part of 'product_wathcer_bloc.dart';

@freezed
abstract class ProductWathcerState with _$ProductWathcerState {
  //KtList<Product> get productList;
  const factory ProductWathcerState.initial() = Initial;
  const factory ProductWathcerState.loadInProgress() = LoadInProgress;
  const factory ProductWathcerState.loadSuccess(KtList<Product> products) =
      LoadSuccess;
  const factory ProductWathcerState.loadFailure(ProductFailure productFailure) =
      LoadFailure;
  //for catagories
  // const factory ProductWathcerState.catagoryInitial() = CatagoryInitial;
  // const factory ProductWathcerState.catagoryInProgress() = CatagoryInProgress;
  // const factory ProductWathcerState.catagoryLoadSucess(
  //     KtList<CatagoryName> catagories) = CatagoryLoadSucess;
  // const factory ProductWathcerState.catagoryLoadFailure(
  //     CatagoryFailure catagoryFailure) = CatagoryLoadFailure;
}
