import 'package:agroly/app/modules/layout/main_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module('/main', module: MainModule());
    r.module('/add', module: MainModule());

    r.redirect('/', to: '/main/home');
  }
}
