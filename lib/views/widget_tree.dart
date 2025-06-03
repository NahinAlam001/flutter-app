import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifiers.dart';
import 'package:learn_flutter/views/pages/home.dart';
import 'package:learn_flutter/views/pages/profile.dart';
import 'package:learn_flutter/views/widgets/nav.dart';

List<Widget> pages = [Home(), Profile()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App"), centerTitle: true),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
