import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key, required this.title});
  final String title;
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
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                child: Text('Dialog'),
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Dialog'),
                    content: Text('Content'),
                    actions: [
                      TextButton(
                        child: Text('Close'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                onTap: () {},
                child: Image.asset('assets/images/bg.jpeg'),
              ),
              FilledButton(
                child: Text('Button'),
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('Button pressed')));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
