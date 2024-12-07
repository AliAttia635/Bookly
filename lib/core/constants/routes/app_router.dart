import 'package:bookly_app/core/constants/routes/routes.dart';
import 'package:bookly_app/features/book_details/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/books_search/presentation/views/search_view.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: Routes.kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: Routes.kBookDetailsView,
        builder: (context, state) {
          final bookModel = state.extra as BookModel;
          return BookDetailsView(
            bookModel: bookModel,
          );
        },
      ),
      GoRoute(
        path: Routes.kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
