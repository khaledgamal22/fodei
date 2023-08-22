import 'package:go_router/go_router.dart';
import 'package:mataam_app/features/home/presentation/views/home_view.dart';
import 'package:mataam_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoute {
  static const kSplashId = '/';
  static const kHomeId = '/home';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashId,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeId,
      builder: (context, state) => HomeView(),
    ),
  ]);
}
