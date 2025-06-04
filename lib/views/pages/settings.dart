import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () => setState(() {}),
              ),
              Text(controller.text),
              CheckboxListTile.adaptive(
                tristate: true,
                title: Text('Checkbox'),
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text('Switch'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider.adaptive(
                max: 50.0,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  print('Image tapped');
                },
                child: Image.asset('assets/images/bg.jpeg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
