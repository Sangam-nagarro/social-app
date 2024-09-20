import 'package:flutter/material.dart';
import 'package:social_app/module/feed/widgets/feed_card.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return const FeedCard();
        });
  }
}
