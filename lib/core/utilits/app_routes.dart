import 'package:go_router/go_router.dart';
import 'package:mataam_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoute{
  static const kSplashId='/';
  static final router=GoRouter(routes: [
    GoRoute(
      path: kSplashId,
      builder: (context, state) => SplashView(),
      ),
  ]);
}