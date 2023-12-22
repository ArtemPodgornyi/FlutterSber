import 'package:flutter/material.dart';
import 'package:flutter_sber/utils/data_storage.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(61, 29, 29, 37),
                          blurRadius: 16,
                          offset: Offset(0, 12)),
                    ]),
                child: Image.asset(
                  DataStorage().getProfileImagePath(),
                  width: 110.0,
                  height: 110.0,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {},
              ),
            ]),
        const SizedBox(height: 36),
        DefaultTextStyle(
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          child: Text(DataStorage().getUsername()),
        ),
      ],
    );
  }
}
