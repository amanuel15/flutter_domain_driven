// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/notes/note.dart';
import '../../domain/products/product.dart';
import '../pages/notes/note_form/note_form_page.dart';
import '../pages/notes/notes_overview/notes_overview_page.dart';
import '../pages/products/product_form/product_form_page.dart';
import '../pages/products/products_overview/products_overview_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String notesOverviewPage = '/notes-overview-page';
  static const String productsOverviewPage = '/products-overview-page';
  static const String noteFormPage = '/note-form-page';
  static const String productFormPage = '/product-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    notesOverviewPage,
    productsOverviewPage,
    noteFormPage,
    productFormPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.notesOverviewPage, page: NotesOverviewPage),
    RouteDef(Routes.productsOverviewPage, page: ProductsOverviewPage),
    RouteDef(Routes.noteFormPage, page: NoteFormPage),
    RouteDef(Routes.productFormPage, page: ProductFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    NotesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotesOverviewPage().wrappedRoute(context),
        settings: data,
      );
    },
    ProductsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductsOverviewPage().wrappedRoute(context),
        settings: data,
      );
    },
    NoteFormPage: (data) {
      var args = data.getArgs<NoteFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => NoteFormPage(
          key: args.key,
          editedNote: args.editedNote,
        ),
        settings: data,
      );
    },
    ProductFormPage: (data) {
      var args = data.getArgs<ProductFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductFormPage(
          key: args.key,
          editedProduct: args.editedProduct,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushNotesOverviewPage() =>
      push<dynamic>(Routes.notesOverviewPage);

  Future<dynamic> pushProductsOverviewPage() =>
      push<dynamic>(Routes.productsOverviewPage);

  Future<dynamic> pushNoteFormPage({
    Key key,
    @required Note editedNote,
  }) =>
      push<dynamic>(
        Routes.noteFormPage,
        arguments: NoteFormPageArguments(key: key, editedNote: editedNote),
      );

  Future<dynamic> pushProductFormPage({
    Key key,
    @required Product editedProduct,
  }) =>
      push<dynamic>(
        Routes.productFormPage,
        arguments:
            ProductFormPageArguments(key: key, editedProduct: editedProduct),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NoteFormPage arguments holder class
class NoteFormPageArguments {
  final Key key;
  final Note editedNote;
  NoteFormPageArguments({this.key, @required this.editedNote});
}

/// ProductFormPage arguments holder class
class ProductFormPageArguments {
  final Key key;
  final Product editedProduct;
  ProductFormPageArguments({this.key, @required this.editedProduct});
}
