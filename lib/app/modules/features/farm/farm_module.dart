import 'package:agroly/app/modules/features/farm/views/page/farm_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FarmModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child("/", child: (context) => const FarmPage());
  }
}
