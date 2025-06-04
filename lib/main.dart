import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifier.dart';
import 'package:learn_flutter/views/pages/welcome_page.dart';
import 'package:learn_flutter/views/widget_tree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Learn Flutter',
          theme: isDarkMode ? ThemeData.light() : ThemeData.dark(),
          home: WelcomePage(),
        );
      },
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return WidgetTree();
  }
}
