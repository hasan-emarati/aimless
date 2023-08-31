import 'package:flutter/material.dart';
import 'package:App_SHe/screens/FaPage/setting-PageFa.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //////////////////////////////////////
    return Center(
      child: ElevatedButton(
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
    );
  }
}
