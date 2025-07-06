import 'package:flutter/material.dart';

class CountDisplay extends StatelessWidget {
  final int count;
  const CountDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      alignment: const Alignment(0, 0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.teal),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Text(
        "Count: $count",
        style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).primaryColor),
      ),
    );
  }
}
