import 'package:agroly/app/modules/features/farm/farm_module.dart';
import 'package:agroly/app/modules/features/home/home_module.dart';
import 'package:agroly/app/modules/layout/views/pages/layout_page.dart';
import 'package:agroly/app/modules/features/menu/menu_module.dart';
import 'package:agroly/app/modules/features/season/season_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

bool isGoingForward = true;

class LayoutModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const MainPage(),
      children: [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/farm', module: FarmModule()),
        ModuleRoute('/safra', module: SeasonModule()),
        ModuleRoute('/menu', module: MenuModule()),
      ],
      transition: TransitionType.custom,
      customTransition: myDynamicTransition,
    );
  }

  CustomTransition get myDynamicTransition => CustomTransition(
    transitionDuration: const Duration(milliseconds: 200),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      var beginIn = isGoingForward ? const Offset(1.0, 0.0) : const Offset(-1.0, 0.0);
      var tweenIn = Tween(
        begin: beginIn,
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeInOut));

      var endOut = isGoingForward ? const Offset(-1.0, 0.0) : const Offset(1.0, 0.0);
      var tweenOut = Tween(
        begin: Offset.zero,
        end: endOut,
      ).chain(CurveTween(curve: Curves.easeInOut));

      return SlideTransition(
        position: animation.drive(tweenIn), // Move quem entra
        child: SlideTransition(
          position: secondaryAnimation.drive(tweenOut), // Move quem sai
          child: child,
        ),
      );
    },
  );
}
