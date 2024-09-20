import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:social_app/module/friend-list/model/user_model.dart';

class FriendListProvider extends GetxController {
  // List<UserModel> friends = [
  //   const UserModel(name: "Anmol Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Rahul Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Anuragh Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Sangam Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Sachin Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Kartic Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Yash Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Rohan Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Suraj Singh", phoneNumber: "+918920152777"),
  //   const UserModel(name: "Ankit Singh", phoneNumber: "+918920152777"),
  // ];

  RxList<UserModel> friends = <UserModel>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await readJosn();
  }

  Future<void> readJosn() async {
    List<UserModel> users = [];
    String jsonString = await rootBundle.loadString('assets/user.json');
    List<dynamic> jsonData = jsonDecode(jsonString);
    for (var element in jsonData) {
      users.add(UserModel.fromJson(element));
    }
    log("json Data $jsonData");
    friends.value = users;
  }
}
