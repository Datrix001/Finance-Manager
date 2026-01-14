import 'package:finwise/core/util/widgets/custom_navigation_bar.dart';
import 'package:finwise/features/home/presentation/screens/home.dart';
import 'package:finwise/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ValueNotifier<NavItem> navNotifier;

  @override
  void initState() {
    super.initState();
    navNotifier = ValueNotifier(NavItem.home);
  }

  @override
  void dispose() {
    navNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ValueListenableBuilder<NavItem>(
            valueListenable: navNotifier,
            builder: (context, selected, _) {
              switch (selected) {
                case NavItem.home:
                  return const Home();
                case NavItem.analyse:
                  return const Placeholder();
                case NavItem.transfer:
                  return const Placeholder();
                case NavItem.wallet:
                  return const Placeholder();
                case NavItem.profile:
                  return const ProfileScreen();
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavigationBar(notifier: navNotifier),
          ),
        ],
      ),
    );
  }
}
