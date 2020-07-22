import 'package:auto_route/auto_route.dart';
import 'package:finished_notes_firebase_ddd_course/application/auth/auth_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/products_watcher/product_wathcer_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/products_overview_body_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProductsOverviewPage extends HookWidget implements AutoRouteWrapper {
  // @override
  // Widget get wrappedRoute => MultiBlocProvider(
  //       providers: [
  //         BlocProvider<ProductWathcerBloc>(
  //           create: (context) => getIt<ProductWathcerBloc>()
  //             ..add(const ProductWathcerEvent.watchAllStarted()),
  //         ),
  //       ],
  //       child: this,
  //     );
  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductWathcerBloc>(create: (context) {
          print('object');
          return getIt<ProductWathcerBloc>()
            ..add(const ProductWathcerEvent.watchAllStarted());
        }),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) =>
                  ExtendedNavigator.of(context).pushSignInPage(),
              // Router.navigator.pushReplacementNamed(Router.signInPage),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
        ),
        body: ProductsOverviewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Router.navigator.pushNamed(
            //   Router.productFormPage,
            //   arguments: ProductFormPageArguments(editedProduct: null),
            // );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
