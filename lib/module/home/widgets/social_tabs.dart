import 'package:flutter/material.dart';

class SocialTabs extends StatelessWidget {
  const SocialTabs({super.key, required this.tabTitle});
  final String tabTitle;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
        child: Text(
          tabTitle,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
