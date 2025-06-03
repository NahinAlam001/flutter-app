import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifiers.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, slectedPage, child) {
        return NavigationBar(
          selectedIndex: slectedPage,
          onDestinationSelected: (index) {
            selectedPageNotifier.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.people), label: 'Profile'),
          ],
        );
      },
    );
  }
}
