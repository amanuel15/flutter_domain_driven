part of 'product_wathcer_bloc.dart';

@freezed
abstract class ProductWathcerEvent with _$ProductWathcerEvent {
  const factory ProductWathcerEvent.watchAllStarted() = _WatchAllStarted;
  const factory ProductWathcerEvent.watchUncompletedStarted() =
      _WatchUncompletedStarted;
  const factory ProductWathcerEvent.productRecived(
          Either<ProductFailure, KtList<Product>> failureOrProducts) =
      _ProductRecived;
}
