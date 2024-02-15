import 'package:app_develop/src/components/footer.dart';
import 'package:app_develop/src/screens/contents_screen.dart';
import 'package:app_develop/src/screens/explore_screen.dart';
import 'package:app_develop/src/screens/home_screen.dart';
import 'package:app_develop/src/screens/library_screen.dart';
import 'package:app_develop/src/screens/login_screen.dart';
import 'package:app_develop/src/screens/search/result_list_screen.dart';
import 'package:app_develop/src/screens/search/result_screen.dart';
import 'package:app_develop/src/screens/search/search_screen.dart';
import 'package:app_develop/src/screens/search/sub_category_select_screen.dart';
import 'package:app_develop/src/screens/undecided_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//以下の2行はおまじない
final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/result',
      builder: (context, state) => const ResultScreen(),
    ),
    GoRoute(
      path: '/resultList',
      builder: (context, state) => const ResultListScreen(resultWord: 'tt'),
    ),
    GoRoute(
      path: '/subCategory',
      builder: (context, state) => const SubCategorySelectScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    //ShellRoute内にBottomNavigationBarで遷移する画面を記載する
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      //BottomNavigationBarを実装しているページを記載する
      //childでScaffoldのbodyを渡す
      builder: (context, state, child) => Footer(
        child: child,
      ),
      routes: <RouteBase>[

//BottomNavigationBarから遷移するページを記載する
        GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen(),
            //Page1から遷移するページを記載する
            routes: <RouteBase>[
              GoRoute(
                path: 'contents',
                builder: (context, state) =>
                    const ContentsScreen(), //TODO 移動したい画面に変えてね。
              ),
            ]),
        //BottomNavigationBarから遷移するページを記載する
        GoRoute(
            path: '/explore',
            builder: (context, state) => const ExploreScreen(),
            //Page２から遷移するページを記載する
            routes: <RouteBase>[
              GoRoute(
                path: 'detail',
                builder: (context, state) => const UndecidedScreen(),
              ),
            ]),
        GoRoute(
            path: '/library',
            builder: (context, state) => const LibraryScreen(),
            //Page3から遷移するページを記載する
            routes: <RouteBase>[
              GoRoute(
                path: 'detail',
                builder: (context, state) => const UndecidedScreen(),
              ),
            ]),
      ],
    ),
  ],
);
