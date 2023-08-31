import 'package:flutter/material.dart';


import 'package:App_SHe/Theme-Library/Theme.dart';

void main() {
  runApp(const ActivePersonnel());
}

class ActivePersonnel extends StatelessWidget {
  const ActivePersonnel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const ThemeLibraryDark();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 54, 54),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [], // tarif kardan ston va radif
          ),
        ),
      ),
    );
  }
}
