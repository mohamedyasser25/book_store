
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash/presentation/view/splashview.dart';
import '../../features/home/data/model/book_model/book_model.dart';
import '../../features/home/data/rebos/homereposimplement.dart';
import '../../features/home/presentation/manger/similerbooks/similer_books_cubit.dart';
import '../../features/home/presentation/view/bookdetils.dart';
import '../../features/home/presentation/view/homescreen.dart';
import '../../features/search/data/repo/searchrepoimple.dart';
import '../../features/search/presentation/manger/searchbook_cubit.dart';
import '../../features/search/presentation/view/searchscreen.dart';
import 'serveslocated.dart';

abstract class AppRouter {
  static String kHomePath = "/HomeView";
  static String kSearchPath = "/SearchView";
  static String kBookDetailsPath = "/BookDetails";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kSearchPath,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SearchbookCubit(getIt.get<Searchrepoimple>()),
            child: const SearchView(),
          );
        },
      ),
      GoRoute(
        path: kHomePath,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsPath,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilerBooksCubit(getIt.get<HomeReposimple>())
              ..featuresimilerbooks(
                  category:
                      (state.extra as BookModel).volumeInfo.categories![0]),
            child: BookDetils(book: state.extra as BookModel),
          );
        },
      ),
    ],
  );
}
