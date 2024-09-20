import 'package:get/get.dart';
import 'package:social_app/module/friend-list/provider/friend_list_provider.dart';
import 'package:social_app/module/home/provider/home_provider.dart';
import 'package:social_app/module/profile/provider/profile_provider.dart';

class HomeBinding extends Bindings {
  HomeBinding() {
    Get.lazyPut(() => HomeController());
    Get.put(FriendListProvider(), permanent: true);
    Get.put(ProfileProvider(), permanent: true);
  }

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
