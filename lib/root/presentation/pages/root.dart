import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';

class Root extends StatelessWidget {
  final Widget child;

  const Root({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 16,
        backgroundColor: Theme.of(context).colorScheme.surface,
        indicatorColor: Theme.of(context).colorScheme.primary,
        shadowColor: Theme.of(context).colorScheme.shadow,
        indicatorShape: CircleBorder(),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: _destinations(),
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (value) => _onItemTapped(value, context),
      ),
      body: child,
    );
  }

  List<NavigationDestination> _destinations() {
    return [
      const NavigationDestination(
        label: "Home",
        icon: Icon(
          MingCute.home_6_line,
          color: secondary,
        ),
        selectedIcon: Icon(
          MingCute.home_6_line,
          color: secondaryLightest,
        ),
      ),
      const NavigationDestination(
        label: "Explore",
        icon: Icon(
          MingCute.compass_line,
          color: secondary,
        ),
        selectedIcon: Icon(
          MingCute.compass_line,
          color: secondaryLightest,
        ),
      ),
      const NavigationDestination(
        label: "Favorite",
        icon: Icon(
          MingCute.heart_line,
          color: secondary,
        ),
        selectedIcon: Icon(
          MingCute.heart_line,
          color: secondaryLightest,
        ),
      ),
      NavigationDestination(
        label: "Chat",
        icon: Badge(
          label: MyText.caption(
            "4",
            color: Colors.white,
          ),
          backgroundColor: primary,
          child: const Icon(
            MingCute.message_4_line,
            color: secondary,
          ),
        ),
        selectedIcon: const Icon(
          MingCute.message_4_line,
          color: secondaryLightest,
        ),
      ),
      const NavigationDestination(
        label: "Profile",
        icon: Icon(
          MingCute.user_2_line,
          color: secondary,
        ),
        selectedIcon: Icon(
          MingCute.user_2_line,
          color: secondaryLightest,
        ),
      ),
    ];
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.contains('home')) {
      return 0;
    }
    if (location.contains('explore')) {
      return 1;
    }
    if (location.contains('favorite')) {
      return 2;
    }
    if (location.contains('chat')) {
      return 3;
    }
    if (location.contains('profile')) {
      return 4;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        GoRouter.of(context).goNamed('home');
      case 1:
        GoRouter.of(context).goNamed('explore');
      case 2:
        GoRouter.of(context).goNamed('favorite');
      case 3:
        GoRouter.of(context).goNamed('chat');
      case 4:
        GoRouter.of(context).goNamed('profile');
    }
  }
}
