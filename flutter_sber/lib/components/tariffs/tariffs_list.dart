import 'package:flutter/material.dart';
import 'package:flutter_sber/components/tariffs/tariff.dart';

class TariffsList extends StatelessWidget {
  const TariffsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tariff(
          Icon(
            Icons.speed,
            size: 35,
            color: Theme.of(context).primaryColor,
          ),
          'Изменить суточный лимит',
          description: 'На платежи и переводы',
        ),
        const Padding(
          padding: EdgeInsets.only(left: 57),
          child: Divider(),
        ),
        Tariff(
          Icon(
            Icons.percent,
            size: 35,
            color: Theme.of(context).primaryColor,
          ),
          'Переводы без комиссии',
          description: 'Показать остаток в этом месяце',
        ),
        const Padding(
          padding: EdgeInsets.only(left: 57),
          child: Divider(),
        ),
        Tariff(
          Icon(
            Icons.sync_alt_rounded,
            size: 35,
            color: Theme.of(context).primaryColor,
          ),
          'Информация о тарифах и лимитах',
        ),
      ],
    );
  }
}
