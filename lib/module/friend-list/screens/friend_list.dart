import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/module/friend-list/model/user_model.dart';
import 'package:social_app/module/friend-list/provider/friend_list_provider.dart';
import 'package:social_app/module/friend-list/widgets/friends_list_tile.dart';

class FriendList extends GetView<FriendListProvider> {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
          itemCount: controller.friends.length,
          itemBuilder: (context, index) {
            UserModel? userModel = controller.friends[index];
            return FriendsListTile(
              userName: userModel.name,
              phoneNumber: userModel.phoneNumber,
            );
          });
    });
  }
}
