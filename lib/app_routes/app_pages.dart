import 'package:get/get.dart';
import 'package:social_app/app_routes/app_routes.dart';
import 'package:social_app/module/home/provider/home_binding.dart';
import 'package:social_app/module/home/screens/home_screen.dart';

final getPages = [
  GetPage(
    name: AppRoutes.homeRoute,
    page: () => HomeScreen(),
    binding: HomeBinding(),
  )
];
