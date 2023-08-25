import 'package:go_router/go_router.dart';
import 'package:mataam_app/features/booking/presentation/views/booking_view.dart';
import 'package:mataam_app/features/forget_password/presentation/views/forget_pass_view.dart';
import 'package:mataam_app/features/home/presentation/views/home_view.dart';
import 'package:mataam_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoute {
  static const kSplashId = '/';
  static const kHomeId = '/home';
  static const kForgetpass = '/forgetpass';
  static const kBooking='/Bokking';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashId,
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeId,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kForgetpass,
      builder: (context, state) => ForgetPassView(),
    ),
    GoRoute(
      path: kBooking,
      builder: (context, state) => BookingView(),
    ),
  ]);
}
