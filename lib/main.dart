import 'package:flutter/material.dart';
import 'package:mataam_app/views/first_view.dart';

void main(){
  runApp(MataamApp());
}

class MataamApp extends StatelessWidget {
  const MataamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstView(),
    );
  }
}