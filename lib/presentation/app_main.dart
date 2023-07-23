import 'package:flutter/material.dart';
import 'package:moto_ex/internal/router/go_router.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      routerConfig: goRouter,
    );
  }
}
