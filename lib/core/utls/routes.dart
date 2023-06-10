import 'package:go_router/go_router.dart';

import '../../Features/Home/presentation/view/book_view_detailes.dart';
import '../../Features/Home/presentation/view/home_view.dart';
import '../../Features/search/presentation/view/search_view.dart';
import '../../Features/splach/presentation/views/widgets/splach_view_body.dart';

abstract class RouterApp {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachViewBody(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookViewDetails',
        builder: (context, state) => const BookViewDetails(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
