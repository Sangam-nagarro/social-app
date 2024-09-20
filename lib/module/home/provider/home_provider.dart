import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/app_constans/strings.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 3, vsync: this);
  final List<String> tabTitles = [
    Strings.tabTitleWall,
    Strings.tabTitleFrind,
    Strings.tabTitleProfile
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }
}
