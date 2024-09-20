// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll

import 'package:flutter_test/flutter_test.dart';
import 'package:social_app/module/friend-list/model/user_model.dart';
import 'package:social_app/module/friend-list/provider/friend_list_provider.dart';

void main() {
  late final FriendListProvider friendListProvider;
  setUpAll(() {
    friendListProvider = FriendListProvider();
    friendListProvider.readJosn;
  });
  group("Frind List Test Cases", () {
    test("Check user model is a correct type or not", () async {
      var result = friendListProvider.friends;

      expect(result, isA<List<UserModel>>());
    });

    test("Check user name should is String", () {
      var result = friendListProvider.friends;
      for (var element in result) {
        expect(element.name, isA<String>());
      }
    });

    test("Check user phone number lenght should 10", () {
      var result = friendListProvider.friends;
      for (var element in result) {
        expect(element.phoneNumber.length, 13);
      }
    });

    test("Check User Name not null", () {
      var result = friendListProvider.friends;
      for (var element in result) {
        expect(element.name, isNotNull);
      }
    });

    test("Check User Name not empty", () {
      var result = friendListProvider.friends;
      for (var element in result) {
        expect(element.name, isNotEmpty);
      }
    });

    test("Check User Phone not null", () {
      var result = friendListProvider.friends;
      for (var element in result) {
        expect(element.phoneNumber, isNotNull);
      }
    });

    test("Check User phone not empty", () {
      var result = friendListProvider.friends;
      for (var element in result) {
        expect(element.phoneNumber, isNotEmpty);
      }
    });
  });
}
