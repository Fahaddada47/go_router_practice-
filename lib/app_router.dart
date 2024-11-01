import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_practice/auth_routes.dart';

class AppRouter {
  AppRouter._();

  static GoRouter get router => _router;

  static final _router = GoRouter(
    initialLocation: '/splash',
    routes: [
      ...AuthRoutes.routes,
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );

  static void go(BuildContext context, String name,
      {Map<String, String> pathParameters = const <String, String>{},
        Map<String, dynamic> queryParameters = const <String, dynamic>{},
        Object? extra}) {
    context.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  static void replace(BuildContext context, String name,
      {Map<String, String> pathParameters = const <String, String>{},
        Map<String, dynamic> queryParameters = const <String, dynamic>{},
        Object? extra}) {
    context.replaceNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  static void push(BuildContext context, String name, {Object? extra}) {
    context.pushNamed(name, extra: extra);
  }

  static void pop(BuildContext context, {Object? result}) {
    context.pop(result);
  }
}
