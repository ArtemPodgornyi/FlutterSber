import 'package:flutter/material.dart';

class ConnectedService extends StatelessWidget {
  const ConnectedService(
      this.title, this.serviceImagePath, this.description, this.price,
      {super.key});

  final String title;
  final String serviceImagePath;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        fixedSize: const Size(215, 130),
        surfaceTintColor: Colors.white,
        elevation: 16,
        shadowColor: const Color.fromARGB(80, 0, 0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withAlpha(20),
                  backgroundImage: AssetImage(serviceImagePath),
                  radius: 20,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.4,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
              Text(
                '$price ₽ в месяц',
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
