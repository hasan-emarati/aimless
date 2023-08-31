import 'package:flutter/material.dart';

import 'package:App_SHe/screens/EnPage/search-bar/searchBar.dart';

void main() {
  runApp(SpermBank());
}

class SpermBank extends StatelessWidget {
  const SpermBank({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: search(),
        backgroundColor: const Color.fromARGB(255, 54, 54, 54),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                // container 3
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                height: 0,
                width: 800,
                color: const Color.fromARGB(35, 61, 61, 61),
              ),
              Container(
                // container 4
                height: 0,
                width: 300,
                color: const Color.fromARGB(35, 95, 95, 88),
              ),
            ], // tarif kardan ston va radif
          ),
        ),
      ),
    );
  }
}
