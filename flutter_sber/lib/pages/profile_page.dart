import 'package:flutter/material.dart';
import 'package:flutter_sber/components/connected/connected_services_list.dart';
import 'package:flutter_sber/components/tariffs/tariffs_list.dart';
import 'package:flutter_sber/components/interests/interests_list.dart';
import 'package:flutter_sber/utils/data_storage.dart';
import 'package:flutter_sber/utils/title_description.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(left: 16),
      children: [
        const SizedBox(height: 30),
        const TitleDescription(
          'У вас подключено',
          'Подписки, автоплатежи и сервисы на которые вы подписались',
        ),
        const SizedBox(height: 15),
        const ConnectedServicesList(),
        const SizedBox(height: 30),
        const TitleDescription(
          'Тарифы и лимиты',
          'Для операций в Сбербанк Онлайн',
        ),
        const SizedBox(
          height: 15,
        ),
        const TariffsList(),
        const SizedBox(height: 50),
        const TitleDescription(
          'Интересы',
          'Мы подбираем истории и предложения по темам, которые вам нравятся',
        ),
        InterestsList(DataStorage().getInterests())
      ],
    );
  }
}

