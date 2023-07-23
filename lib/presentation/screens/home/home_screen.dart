import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.navigationShell,
  }) : super(
          key: key ?? _valueKey,
        );

  static const _valueKey = ValueKey('HomeScreenValueKey');

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
            label: 'Section A',
            icon: Icon(Icons.home),
          ),
          NavigationDestination(
            label: 'Section B',
            icon: Icon(Icons.settings),
          ),
        ],
        onDestinationSelected: (index) => navigationShell.goBranch(index),
      ),
    );
  }
}
