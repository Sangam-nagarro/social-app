import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Image.network(
              'https://media.istockphoto.com/id/1952748547/photo/smiling-woman-embracing-dog-on-sofa.jpg?s=1024x1024&w=is&k=20&c=NgaENrEXAc0ylT21r3N-9nw_NLiRMjLDewDta8BmXvs='),
          const Text('Hello Dog Feed')
        ],
      ),
    );
  }
}
