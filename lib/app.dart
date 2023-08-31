import 'package:flutter/material.dart';

import 'package:App_SHe/screens/EnPage/ControlPanel.dart';
import 'package:App_SHe/screens/EnPage/Farm.dart';
import 'package:App_SHe/screens/EnPage/store.dart';
import 'package:App_SHe/screens/EnPage/User-Page.dart';
import 'package:App_SHe/screens/EnPage/engin-Page.dart';
import 'package:App_SHe/screens/EnPage/home-Page.dart';
import 'package:App_SHe/screens/EnPage/news.Dart';
import 'package:App_SHe/screens/EnPage/AI.Dart';
import 'package:App_SHe/screens/EnPage/WorkPage.dart';
import 'package:App_SHe/screens/EnPage/setting-Page.dart';
import 'package:App_SHe/screens/EnPage/Weather.dart';
import 'package:App_SHe/screens/EnPage/Chart.dart';
import 'package:App_SHe/screens/EnPage/Alarms/main.dart';
import 'package:App_SHe/screens/EnPage/note/note.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    UserPage(),
    EnginPage(),
    NewsPage(),
    FarmPage(),
    AiPage(),
    WorkPage(),
    weatherPageEn(),
    StorePage(),
    ChartPage(),
    ControlPanel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const NotePage();
                  },
                ),
              );
              debugPrint("NotePad");
            },
            icon: const Icon(Icons.note_add),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Metronome();
                  },
                ),
              );
              debugPrint("Alarms");
            },
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () {
              debugPrint("Message");
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Settings();
                  },
                ),
              );
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
              ),
              label: "Home"),
          NavigationDestination(
              icon: Icon(
                Icons.space_dashboard,
                size: 35,
              ),
              label: "Dashboard"),
          NavigationDestination(
              icon: Icon(
                Icons.engineering,
                size: 35,
              ),
              label: "engin"),
          NavigationDestination(
              icon: Icon(
                Icons.newspaper_outlined,
                size: 35,
              ),
              label: "news"),
          NavigationDestination(
              icon: Icon(
                Icons.agriculture,
                size: 35,
              ),
              label: "Farm"),
          NavigationDestination(
              icon: Icon(
                Icons.smart_toy,
                size: 35,
              ),
              label: "smart_toy"),
          NavigationDestination(
              icon: Icon(
                Icons.work,
                size: 35,
              ),
              label: "work"),
          NavigationDestination(
              icon: Icon(
                Icons.sunny,
                size: 35,
              ),
              label: "weather"),
          NavigationDestination(
              icon: Icon(
                Icons.store,
                size: 35,
              ),
              label: "store"),
          NavigationDestination(
              icon: Icon(
                Icons.query_stats,
                size: 35,
              ),
              label: "Chart"),
          NavigationDestination(
              icon: Icon(
                Icons.pest_control,
                size: 35,
              ),
              label: "Control Panel"),
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
