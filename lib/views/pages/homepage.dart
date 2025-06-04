import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/hero_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(children: [HeroWidget()]),
    );
  }
}
