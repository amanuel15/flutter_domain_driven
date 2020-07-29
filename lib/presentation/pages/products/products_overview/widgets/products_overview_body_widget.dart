import 'package:finished_notes_firebase_ddd_course/application/product/products_watcher/product_wathcer_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/critical_failure_display_pwidget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsOverviewBody extends StatelessWidget {
  //final _watcherBloc = getIt<ProductWathcerBloc>();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductWathcerBloc, ProductWathcerState>(
      //bloc: _watcherBloc,
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            child: Text('initial'),
          ),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification &&
                    _scrollController.position.extentAfter == 0) {
                  //_watcherBloc.add(const ProductWathcerEvent.watchUncompletedStarted());
                  context
                      .bloc<ProductWathcerBloc>()
                      .add(const ProductWathcerEvent.watchUncompletedStarted());
                }
                return false;
              },
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return index >= state.products.size
                      ? _buildLoaderListItem() // TODO: usless right now, but make it so it loads when end reached
                      : ProductCard(product: product);
                  // if (product.failureOption.isSome()) {
                  //   return ErrorProductCard(product: product);
                  // }
                  // return ProductCard(product: product);
                },
                // TODO: watch reso coder pagination video for better implementaion like end of file
                itemCount: state.products.size,
                controller: _scrollController,
              ),
            );
            // return ListView.builder(
            //   itemBuilder: (context, index) {
            //     final product = state.products[index];
            //     // if (product.failureOption.isSome()) {
            //     //   return ErrorProductCard(product: product);
            //     // }
            //     return ProductCard(product: product);
            //   },
            //   itemCount: state.products.size,
            // );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.productFailure,
            );
          },
        );
      },
    );
  }

  Widget _buildLoaderListItem() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  // Alternative for the scroll notification Handler.
  // bool _handleScrollNotification(notification) {
  //   if (notification is ScrollEndNotification &&
  //       _scrollController.position.extentAfter == 0) {
  //     _watcherBloc.add(const ProductWathcerEvent.watchUncompletedStarted());
  //   }
  //   return false;
  // }
}
