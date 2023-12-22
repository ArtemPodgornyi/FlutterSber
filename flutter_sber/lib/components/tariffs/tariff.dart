import 'package:flutter/material.dart';

class Tariff extends StatelessWidget {
  const Tariff(this.tariffIcon, this.title, {this.description, super.key});

  final Icon tariffIcon;
  final String title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: tariffIcon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (description != null)
                Text(
                  description ?? '',
                  style: const TextStyle(
                      color: Color.fromARGB(140, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 14,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
