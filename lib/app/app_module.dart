import 'package:agroly/app/modules/layout/layout_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/in', module: LayoutModule());
    r.module('/add', module: LayoutModule());

    r.redirect('/', to: '/in/home');
  }
}
