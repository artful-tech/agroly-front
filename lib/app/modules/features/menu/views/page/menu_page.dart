import 'package:agroly/app/modules/features/menu/routes/menu_routes.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  List<Widget> _buildMenuPage(BuildContext context) {
    return MenuRoutes.menuItems.expand((item) {
      return [
        ListTile(
          leading: Icon(item.icon),
          title: Text(item.label),
          onTap: () => print('test tap'),
          tileColor: Theme.of(context).colorScheme.onSurface,
        ),
        Divider(height: 0, color: Theme.of(context).colorScheme.surface),
      ];
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(horizontal: 15),
            child: Text(
              'Olá, bom te ver novamente, Luiz!',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const Divider(),
          Expanded(child: ListView(children: [..._buildMenuPage(context)])),
        ],
      ),
    );
  }
}
