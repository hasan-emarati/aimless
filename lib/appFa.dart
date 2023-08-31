import 'package:flutter/material.dart';
import 'package:App_SHe/screens/FaPage/Add_boxFa.dart';
import 'package:App_SHe/screens/FaPage/storeFa.dart';
import 'package:App_SHe/screens/FaPage/User-PageFa.dart';
import 'package:App_SHe/screens/FaPage/engin-PageFa.dart';
import 'package:App_SHe/screens/FaPage/home-PageFa.dart';
import 'package:App_SHe/screens/FaPage/FarmFa.Dart';
import 'package:App_SHe/screens/FaPage/mailFa.Dart';
import 'package:App_SHe/screens/FaPage/AIFa.Dart';
import 'package:App_SHe/screens/FaPage/WorkPageFa.dart';

class AppFa extends StatefulWidget {
  const AppFa({Key? key}) : super(key: key);

  @override
  State<AppFa> createState() => _AppState();
}

class _AppState extends State<AppFa> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    UserPage(),
    EnginPage(),
    MailePage(),
    FarmPage(),
    AiPage(),
    WorkPage(),
    StorePage(),
    AddBaxPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 63, 63),
      appBar: AppBar(
        title: const Text("App Bar"),
        backgroundColor: const Color.fromARGB(36, 36, 36, 36),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Actions");
            },
            icon: const Icon(Icons.report_problem_sharp),
          ),
          IconButton(
            onPressed: () {
              debugPrint("setting");
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                size: 35,
                color: Colors.grey,
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                size: 35,
                color: Colors.grey,
              ),
              label: "Profile"),
          NavigationDestination(
              icon: Icon(
                Icons.engineering,
                size: 35,
                color: Colors.grey,
              ),
              label: "engineering"),
          NavigationDestination(
              icon: Icon(
                Icons.mail,
                size: 35,
                color: Colors.grey,
              ),
              label: "mail"),
          NavigationDestination(
              icon: Icon(
                Icons.agriculture,
                size: 35,
                color: Colors.grey,
              ),
              label: "Farm"),
          NavigationDestination(
              icon: Icon(
                Icons.smart_toy,
                size: 35,
                color: Colors.grey,
              ),
              label: "smart_toy"),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                size: 35,
                color: Colors.grey,
              ),
              label: "work"),
          NavigationDestination(
              icon: Icon(
                Icons.store,
                size: 35,
                color: Colors.grey,
              ),
              label: "store"),
          NavigationDestination(
              icon: Icon(
                Icons.add_box,
                size: 35,
                color: Colors.grey,
              ),
              label: "add box"),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              currentPage = index;
            },
          );
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
