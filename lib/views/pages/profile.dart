import 'package:flutter/material.dart';
import 'package:learn_flutter/data/notifier.dart';
import 'package:learn_flutter/views/pages/welcome_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
