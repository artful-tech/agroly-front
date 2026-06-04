import 'package:agroly/app/core/database/local_database.dart';
import 'package:agroly/app/modules/layout/layout_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar_community/isar.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.add<Isar>(LocalDatabase.instance as Function);
  }

  @override
  void routes(RouteManager r) {
    r.module('/in', module: LayoutModule());
    r.module('/add', module: LayoutModule());

    r.redirect('/', to: '/in/home');
  }
}
