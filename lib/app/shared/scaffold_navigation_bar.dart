import 'package:wordpress_flutter_app/app/shared/navigation_icons.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(label: 'Posts', icon: homeIcon),
          NavigationDestination(label: 'Favorites', icon: favoritesIcon),
          NavigationDestination(label: 'About', icon: aboutIcon),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
