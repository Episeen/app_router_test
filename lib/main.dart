import 'package:app_router_test/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
final AppRouter _appRouter = AppRouter();

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerDelegate: _appRouter.delegate(),
      // routerConfig: _appRouter.config(),
      routeInformationParser: _appRouter.defaultRouteParser(
        includePrefixMatches: true,
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
    );
  }
}
