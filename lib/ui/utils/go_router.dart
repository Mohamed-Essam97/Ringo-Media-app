import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ringo_media_flutter/ui/app_router.dart';

extension GoRouterLocation on GoRouter {
  String get location {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  static BuildContext? get ctx =>
      AppRouter.router.routerDelegate.navigatorKey.currentState?.context;
}
