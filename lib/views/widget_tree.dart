import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifier.dart';
import 'package:learn_flutter/views/pages/homepage.dart';
import 'package:learn_flutter/views/pages/profile.dart';
import 'package:learn_flutter/views/pages/settings.dart';
import 'package:learn_flutter/widgets/navbar_widgets.dart';

List<Widget> pages = [Home(), Profile()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        actions: [
          IconButton(
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
