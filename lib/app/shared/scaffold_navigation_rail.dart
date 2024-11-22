import 'package:gordon_ferguson_app/app/shared/navigation_icons.dart';
import 'package:flutter/material.dart';

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
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
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                label: Text('Posts'),
                icon: homeIcon,
              ),
              NavigationRailDestination(
                label: Text('Categories'),
                icon: categoriesIcon,
              ),
              NavigationRailDestination(
                label: Text('Favorites'),
                icon: favoritesIcon,
              ),
              NavigationRailDestination(
                label: Text('About'),
                icon: aboutIcon,
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}
