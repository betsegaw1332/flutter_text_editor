
import 'package:flutter/material.dart';
import 'package:flutter_text_editor/src/presentation/pages/export.dart';
import 'package:flutter_text_editor/src/utils/export.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        name: AppRoutes.rootRouteName,
        redirect: ((context, state) =>
            state.namedLocation(AppRoutes.onboardingRouteName))),
  
    GoRoute(
        path: '/home',
        name: AppRoutes.homeRoute,
        pageBuilder: (context, state) =>
            const MaterialPage<void>(child: HomePage()))
  ]);
}