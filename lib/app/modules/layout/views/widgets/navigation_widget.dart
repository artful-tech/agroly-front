import 'package:agroly/app/modules/layout/config/navigation_config.dart';
import 'package:agroly/app/modules/layout/main_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Modular.to.addListener(_syncRouteToIndex);
    _syncRouteToIndex();
  }

  @override
  void dispose() {
    Modular.to.removeListener(_syncRouteToIndex);
    super.dispose();
  }

  void _syncRouteToIndex() {
    final currentPath = Modular.to.path;

    final index = NavigationConfig.navItems.indexWhere((item) => currentPath.contains(item.route));

    if (index != -1 && index != _currentIndex) {
      setState(() {
        isGoingForward = index > _currentIndex;
        _currentIndex = index;
      });
    }
  }

  void _onTabTapped(int newIndex) {
    if (newIndex == _currentIndex) return;

    isGoingForward = newIndex > _currentIndex;

    Modular.to.navigate(NavigationConfig.navItems[newIndex].route);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BottomNavigationBar(
      onTap: _onTabTapped,
      currentIndex: _currentIndex,
      items: NavigationConfig.navItems.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: item.label,
          tooltip: item.tooltip,
        );
      }).toList(),
      type: BottomNavigationBarType.fixed,
      elevation: 1,
      backgroundColor: isDark
          ? Theme.of(context).colorScheme.onSurface
          : Theme.of(context).colorScheme.onPrimary,
      useLegacyColorScheme: true,
    );
  }
}
