import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/module/feed/screens/feed.dart';
import 'package:social_app/module/friend-list/screens/friend_list.dart';
import 'package:social_app/module/home/provider/home_provider.dart';
import 'package:social_app/module/home/widgets/social_tabs.dart';
import 'package:social_app/module/profile/screens/profile.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeProvider = Get.find<HomeController>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social App'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabBar(
            onTap: (int cuIndex) {},
            controller: homeProvider.tabController,
            tabs: List.generate(
              homeProvider.tabTitles.length,
              (index) {
                return SocialTabs(tabTitle: homeProvider.tabTitles[index]);
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: homeProvider.tabController,
              children: [const Feed(), FriendList(), const Profile()],
            ),
          )
        ],
      ),
    );
  }
}
