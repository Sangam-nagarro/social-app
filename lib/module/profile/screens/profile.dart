import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/module/profile/provider/profile_provider.dart';
import 'package:social_app/module/profile/widgets/gender_radio.dart';

class Profile extends GetView<ProfileProvider> {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
          ),
          const Text('First Name'),
          const SizedBox(height: 10),
          TextField(
            controller: controller.nameTextController,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20),
          const Text('Last Name'),
          const SizedBox(height: 10),
          TextField(
            controller: controller.lastNameController,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          const SizedBox(height: 20),
          const Text('Gender'),
          const SizedBox(height: 10),
          Obx(() {
            return Row(
              children: [
                GenderRadio(
                    groupValue: controller.genderGroupValue.value,
                    onChanged: (vaule) {
                      controller.genderGroupValue.value = vaule ?? 0;
                    },
                    radioTitle: "Male",
                    value: 0),
                GenderRadio(
                    groupValue: controller.genderGroupValue.value,
                    onChanged: (vaule) {
                      controller.genderGroupValue.value = vaule ?? 1;
                    },
                    radioTitle: "Female",
                    value: 1),
              ],
            );
          }),
        ],
      ),
    );
  }
}
