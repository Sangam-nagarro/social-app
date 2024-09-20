import 'package:flutter/material.dart';

class FriendsListTile extends StatelessWidget {
  const FriendsListTile(
      {super.key, required this.phoneNumber, required this.userName});
  final String userName;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 9, 40, 65),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(Icons.person, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Divider(),
                  Text(
                    phoneNumber,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
