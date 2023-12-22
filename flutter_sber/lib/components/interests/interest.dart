import 'package:flutter/material.dart';

class Interest extends StatelessWidget {
  const Interest(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(20, 0, 0, 0),
        padding: const EdgeInsets.all(15),
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
