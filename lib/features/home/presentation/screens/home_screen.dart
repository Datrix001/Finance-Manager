import 'package:finwise/core/util/widgets/custom_navigation_bar.dart';
import 'package:finwise/features/home/presentation/screens/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navNotifier = ValueNotifier<NavItem>(NavItem.home);
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
                  return const Placeholder();
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
