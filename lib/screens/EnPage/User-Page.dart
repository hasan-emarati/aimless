import 'package:flutter/material.dart';
import 'package:App_SHe/screens/EnPage/setting-Page.dart';
import 'package:App_SHe/screens/EnPage/LoginPages/Screens/Welcome/welcome_screen.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //////////////////////////////////////
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const WelcomeScreen();
                  },
                ),
              );
            },
            child: const Text("Login"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Settings();
                  },
                ),
              );
            },
            child: const Text("settings"),
          ),
        ],
      ),
    );
  }
}
