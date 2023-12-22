import 'package:flutter/material.dart';
import 'package:flutter_sber/components/connected/connected_service.dart';

class ConnectedServicesList extends StatelessWidget {
  const ConnectedServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 5, bottom: 20),
            child: ConnectedService(
                'СберПрайм', 'images/sber_prime.png', 'Платёж 9 июля', 199),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 5, bottom: 20),
            child: ConnectedService('Переводы',
                'images/transactions.png', 'Автопродление 21 августа', 199),
          ),
          SizedBox(width: 16)
        ],
      ),
    );
  }
}
