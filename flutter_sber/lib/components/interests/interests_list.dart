import 'package:flutter/material.dart';
import 'package:flutter_sber/components/interests/interest.dart';

class InterestsList extends StatelessWidget {
  const InterestsList(this.interests, {super.key});

  final List<String> interests;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        direction: Axis.horizontal,
        children: [
          if (interests.isNotEmpty) Interest(interests.first),
          for (int i = 1; i < interests.length; ++i) Interest(interests[i]),
        ],
      ),
    );
  }
}
