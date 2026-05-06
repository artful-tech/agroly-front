import 'package:agroly/app/modules/layout/views/widgets/navigation_widget.dart';
import 'package:agroly/app/modules/layout/views/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: RouterOutlet(),
        bottomNavigationBar: NavigationWidget(),
      ),
    );
  }
}
