import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mataam_app/core/utilits/app_routes.dart';

import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MataamApp());
}

class MataamApp extends StatelessWidget {
  const MataamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
     routerConfig: AppRoute.router,
    );
  }
}