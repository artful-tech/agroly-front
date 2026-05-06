import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      "/",
      child: (context) => const Center(
        child: Align(alignment: .center, child: Text("PÁGINA DE MENU")),
      ),
    );
  }
}
