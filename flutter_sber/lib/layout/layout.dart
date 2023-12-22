import 'package:flutter/material.dart';
import 'package:flutter_sber/components/header/header.dart';
import 'package:flutter_sber/pages/profile_page.dart';
import 'package:flutter_sber/pages/settings_page.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                shadowColor: Colors.black,
                surfaceTintColor: Colors.white,
                toolbarHeight: 250,
                title: const Header(),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Theme.of(context).primaryColor,
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  tabs: const [
                    Tab(child: Text('Профиль')),
                    Tab(child: Text('Настройки'))
                  ],
                ),
              )
            ],
            body: const TabBarView(
              children: [
                ProfilePage(),
                SettingsPage(),
              ],
            ),
          ),
        ),
      );
}
