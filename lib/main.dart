import 'package:flutter/material.dart';
import 'package:mataam_app/core/utilits/app_routes.dart';

void main(){
  runApp(MataamApp());
}

class MataamApp extends StatelessWidget {
  const MataamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
     routerConfig: AppRoute.router,
    );
  }
}