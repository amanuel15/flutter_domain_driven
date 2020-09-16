import 'package:auto_route/auto_route.dart';
import 'package:finished_notes_firebase_ddd_course/application/auth/auth_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/application/product/products_watcher/product_wathcer_bloc.dart';
import 'package:finished_notes_firebase_ddd_course/injection.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/pages/products/products_overview/widgets/products_overview_body_widget.dart';
import 'package:finished_notes_firebase_ddd_course/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//class ProductsOverviewPage extends HookWidget implements AutoRouteWrapper {
// @override
// Widget wrappedRoute(BuildContext context) {
//   return MultiBlocProvider(
//     providers: [
//       BlocProvider<ProductWathcerBloc>(create: (context) {
//         return getIt<ProductWathcerBloc>()
//           ..add(const ProductWathcerEvent.watchAllStarted());
//       }),
//     ],
//     child: this,
//   );
// }
class ProductsOverviewPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.width;
    final double screenWidth = MediaQuery.of(context).size.width;
    ScreenUtil.init(context,
        width: screenWidth, height: screenHeight, allowFontScaling: true);
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
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What you might like!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ProductsOverviewBody(),
          ],
        ),
        // ProductsOverviewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ExtendedNavigator.of(context).push(
              Routes.productFormPage,
              arguments: ProductFormPageArguments(editedProduct: null),
            );
            // Router.navigator.pushNamed(
            //   Router.productFormPage,
            //   arguments: ProductFormPageArguments(editedProduct: null),
            // );
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: _currentTab,
          // onTap: (int value){
          //   setState(() {
          //     _currentTab = value;
          //   });
          // },
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              title: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                size: 30.0,
              ),
              title: const SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance,
                size: 30.0,
              ),
              title: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
