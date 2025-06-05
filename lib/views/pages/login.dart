import 'package:flutter/material.dart';
import 'package:learn_flutter/views/widget_tree.dart';
import 'package:learn_flutter/widgets/hero_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String confirmEmail = "123";
  String confirmPassword = "456";

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            SizedBox(height: 20),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                labelText: 'Username',
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                labelText: 'Password',
              ),
              obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Login'),
              onPressed: () {
                onLoginPressed();
              },
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmEmail == controllerEmail.text &&
        controllerPassword.text == controllerPassword.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WidgetTree()),
      );
    }
  }
}
