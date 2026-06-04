import 'package:agroly/app/modules/features/menu/views/page/menu_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child("/", child: (context) => const MenuPage());
  }
}
