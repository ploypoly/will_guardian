import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:will_guardian/page/home_page.dart';

final navigatorState = GlobalKey<NavigatorState>();

class AppRoute {
  static GoRouter get router => GoRouter(
    initialLocation: "/",
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        name: "home",
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[],
      ),
    ],
  );
}
