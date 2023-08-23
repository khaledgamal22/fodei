import 'package:get_it/get_it.dart';
import 'package:mataam_app/features/splash/data/repos/splash_repo_implementation.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<SplashRepoImplementation>(
    SplashRepoImplementation(),
  );
}
