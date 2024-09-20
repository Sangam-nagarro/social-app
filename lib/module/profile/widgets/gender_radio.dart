import 'package:flutter/material.dart';

class GenderRadio extends StatelessWidget {
  const GenderRadio(
      {super.key,
      required this.groupValue,
      required this.onChanged,
      required this.radioTitle,
      required this.value});
  final String radioTitle;
  final int value;
  final int groupValue;
  final Function(int?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: value, groupValue: groupValue, onChanged: onChanged),
        Text(radioTitle),
      ],
    );
  }
}
