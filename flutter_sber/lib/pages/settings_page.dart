import 'package:flutter/cupertino.dart';
import 'package:flutter_sber/utils/title_description.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30, left: 16),
      child: TitleDescription('Настройки', 'Появятся в будущих обновлениях ☺'),
    );
  }
}
