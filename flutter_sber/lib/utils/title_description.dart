import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription(this.title, this.description, {super.key});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.w700, letterSpacing: -0.7),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.42,
            color: Color.fromARGB(140, 0, 0, 0),
          ),
        ),
      ],
    );
  }
}
