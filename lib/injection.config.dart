// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/notes/note_actor/note_actor_bloc.dart';
import 'application/notes/note_form/note_form_bloc.dart';
import 'application/notes/note_watcher/note_watcher_bloc.dart';
import 'application/product/catagory_watcher/catagory_watcher_bloc.dart';
import 'application/product/product_form/product_form_bloc.dart';
import 'application/product/products_watcher/product_wathcer_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/notes/i_note_repository.dart';
import 'domain/products/i_product_repository.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/auth/firebase_user_mapper.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/core/firestore_helpers.dart';
import 'infrastructure/notes/note_repository.dart';
import 'infrastructure/products/product_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  gh.lazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<FirebaseUserMapper>(),
      ));
  gh.lazySingleton<INoteRepository>(() => NoteRepository(g<Firestore>()));
  gh.lazySingleton<IProductRepository>(
      () => ProductRepository(g<Firestore>(), g<FirebaseStorage>()));
  gh.factory<NoteActorBloc>(() => NoteActorBloc(g<INoteRepository>()));
  gh.factory<NoteFormBloc>(() => NoteFormBloc(g<INoteRepository>()));
  gh.factory<NoteWatcherBloc>(() => NoteWatcherBloc(g<INoteRepository>()));
  gh.factory<ProductFormBloc>(() => ProductFormBloc(g<IProductRepository>()));
  gh.factory<ProductWathcerBloc>(
      () => ProductWathcerBloc(g<IProductRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  gh.factory<CatagoryWatcherBloc>(
      () => CatagoryWatcherBloc(g<IProductRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
