import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mataam_app/features/booking/presentation/views/booking_view.dart';
import 'package:mataam_app/features/forget_password/data/repos/forget_password_repo_imple.dart';
import 'package:mataam_app/features/forget_password/presentation/view_models/cubit/forgetpassword_cubit.dart';
import 'package:mataam_app/features/forget_password/presentation/views/change_pass_view.dart';
import 'package:mataam_app/features/forget_password/presentation/views/forget_pass_view.dart';
import 'package:mataam_app/features/home/presentation/views/home_view.dart';
import 'package:mataam_app/features/home/presentation/views/restaurant_details_view.dart';
import 'package:mataam_app/features/splash/presentation/views/onboarding_view.dart';
import 'package:mataam_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoute {
  static const kSplashId = '/splash';
  static const kHomeId = '/home';
  static const kForgetpass = '/forgetpass';
  static const kChangepass = '/changepass';
  static const kBooking = '/Bokking';
  static const konBoarding = '/';
  static const kRestaurantDetails = '/RestaurantDetails';
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
      builder: (context, state) => BlocProvider(
        create: (context) => ForgetpasswordCubit(ForgetPasswordRepoImple()),
        child: ForgetPassView(),
      ),
    ),
    GoRoute(
      path: kBooking,
      builder: (context, state) => BookingView(),
    ),
    GoRoute(
      path: kChangepass,
      builder: (context, state) => ChangePassView(),
    ),
    GoRoute(
      path: konBoarding,
      builder: (context, state) => OnBoardingView(),
    ),
    GoRoute(
      path: kRestaurantDetails,
      builder: (context, state) => RestaurantDetailsView(),
    ),
  ]);
}
