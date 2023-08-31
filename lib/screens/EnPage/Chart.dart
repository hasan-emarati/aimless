import 'package:flutter/material.dart';

import 'package:App_SHe/screens/EnPage/chart-routs/main.dart';

void main() {
  runApp(ChartPage());
}

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 54, 54),
        body: SafeArea(
          child: Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black12,
              child: Chart(),
            ),
          ),
        ),
      ),
    );
  }
}
