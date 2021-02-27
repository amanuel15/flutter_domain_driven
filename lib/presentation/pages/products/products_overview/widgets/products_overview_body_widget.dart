import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/products_watcher/product_wathcer_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/domain/products/product.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/critical_failure_display_pwidget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/product_card_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsOverviewBody extends StatelessWidget {
  final List a = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    List<List<String>> orders = [
      ['rating'],
      ['soldAmount'],
      ['totalAmount'],
      ['price', 'totalAmount'],
    ];
    return Column(
      children: orders
          .map(
            (list) => BlocProvider<ProductWathcerBloc>(
              create: (context) {
                return getIt<ProductWathcerBloc>()
                  ..add(ProductWathcerEvent.watchProducts(
                    orderBys: list,
                  ));
              },
              child: BlocBuilder<ProductWathcerBloc, ProductWathcerState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Container(
                      child: const Text('initial'),
                    ),
                    loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSuccess: (state) {
                      final _scrollController = ScrollController();
                      return NotificationListener<ScrollNotification>(
                        onNotification: (notification) {
                          if (notification is ScrollEndNotification &&
                              _scrollController.position.extentAfter == 0) {
                            context
                                .bloc<ProductWathcerBloc>()
                                .add(ProductWathcerEvent.watchProductsContinued(
                                  orderBys: list,
                                ));
                          }
                          return false;
                        },
                        child: Container(
                          height: 300,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final product = state.products[index];
                              return index >= state.products.size
                                  ? _buildLoaderListItem() // TODO: usless right now, but make it so it loads when end reached
                                  : CarouselCard(product: product);
                              // if (product.failureOption.isSome()) {
                              //   return ErrorProductCard(product: product);
                              // }
                              // return ProductCard(product: product);
                            },
                            itemCount: state.products.size,
                            controller: _scrollController,
                          ),
                        ),
                      );
                    },
                    loadFailure: (state) {
                      return CriticalFailureDisplay(
                        failure: state.productFailure,
                      );
                    },
                  );
                },
              ),
            ),
          )
          .toList(),
    );
    // return BlocBuilder<ProductWathcerBloc, ProductWathcerState>(
    //   builder: (context, state) {
    //     return state.map(
    //       initial: (_) => Container(
    //         child: Text('initial'),
    //       ),
    //       loadInProgress: (_) => const Center(
    //         child: CircularProgressIndicator(),
    //       ),
    //       loadSuccess: (state) {
    //         return NotificationListener<ScrollNotification>(
    //           onNotification: (notification) {
    //             if (notification is ScrollEndNotification &&
    //                 _scrollController.position.extentAfter == 0) {
    //               //_watcherBloc.add(const ProductWathcerEvent.watchUncompletedStarted());
    //               context
    //                   .bloc<ProductWathcerBloc>()
    //                   .add(const ProductWathcerEvent.watchUncompletedStarted());
    //             }
    //             return false;
    //           },
    //           child: ListView.builder(
    //             itemBuilder: (context, index) {
    //               final product = state.products[index];
    //               return index >= state.products.size
    //                   ? _buildLoaderListItem()
    //                   : ProductCard(product: product);
    //               // if (product.failureOption.isSome()) {
    //               //   return ErrorProductCard(product: product);
    //               // }
    //               // return ProductCard(product: product);
    //             },
    //             itemCount: state.products.size,
    //             controller: _scrollController,
    //           ),
    //         );
    //         // return ListView.builder(
    //         //   itemBuilder: (context, index) {
    //         //     final product = state.products[index];
    //         //     // if (product.failureOption.isSome()) {
    //         //     //   return ErrorProductCard(product: product);
    //         //     // }
    //         //     return ProductCard(product: product);
    //         //   },
    //         //   itemCount: state.products.size,
    //         // );
    //       },
    //       loadFailure: (state) {
    //         return CriticalFailureDisplay(
    //           failure: state.productFailure,
    //         );
    //       },
    //     );
    //   },
    // );
  }

  // Widget _buildLoaderListItem() {
  //   return const Center(
  //     child: CircularProgressIndicator(),
  //   );
  // }
}

Widget _buildLoaderListItem() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(
          Routes.productFormPage,
          arguments: ProductFormPageArguments(editedProduct: product),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 210.0,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              bottom: 15.0,
              child: Container(
                height: 120.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${product.productName.getOrCrash()}',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text(
                        '⭐' * 4,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 100.h.toDouble(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        progressIndicatorBuilder: (_, __, ___) {
                          return const CircularProgressIndicator();
                        },
                        imageUrl: product.portraitImage.getOrCrash(),
                        //height: 0.7.hp.toDouble(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${product.soldAmount.getOrCrash()}\$',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          product.catagories.getOrCrash()[0].getOrCrash(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
