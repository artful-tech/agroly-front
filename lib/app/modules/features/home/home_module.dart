import 'package:agroly/app/modules/features/home/views/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child("/", child: (context) => const HomePage());
  }
}
