import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/app_routes/app_pages.dart';
import 'package:social_app/app_routes/app_routes.dart';
import 'package:social_app/module/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.homeRoute,
      getPages: [...getPages],
      home: HomeScreen(),
    );
  }
}
