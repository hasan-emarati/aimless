import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

import 'package:App_SHe/screens/EnPage/work-routes/Active-personnel.dart';
import 'package:App_SHe/screens/EnPage/work-routes/Program-definitions.dart';
import 'package:App_SHe/screens/EnPage/work-routes/Protocol-definition.dart';
import 'package:App_SHe/screens/EnPage/work-routes/User-definition.dart';
import 'package:App_SHe/screens/EnPage/work-routes/emergency.dart';
import 'package:App_SHe/screens/EnPage/work-routes/Stabulum.dart';

void main() {
  runApp(
    const WorkPage(),
  );
}

class WorkPage extends StatefulWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<WorkPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    ActivePersonnel(),
    emergency(),
    ProgramDefinitions(),
    ProtocolDefinition(),
    UserDefinition(),
    Stabulum(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            items: const [
              SideNavigationBarItem(
                icon: Icons.local_activity_rounded,
                label: 'Active Personnel ',
              ),
              SideNavigationBarItem(
                icon: Icons.emergency,
                label: 'emergency',
              ),
              SideNavigationBarItem(
                icon: Icons.app_registration,
                label: 'Program Definitions',
              ),
              SideNavigationBarItem(
                icon: Icons.dialer_sip,
                label: 'Protocol Definition',
              ),
              SideNavigationBarItem(
                icon: Icons.person_add,
                label: 'User Definition',
              ),
              SideNavigationBarItem(
                icon: Icons.category,
                label: 'Stabulum',
              ),
            ],
            onTap: (index) {
              setState(
                () {
                  selectedIndex = index;
                },
              );
            },
            // Change the background color and disabled header/footer dividers
            // Make use of standard() constructor for other themes
            theme: SideNavigationBarTheme(
              backgroundColor: const Color.fromARGB(106, 0, 0, 0),
              togglerTheme: SideNavigationBarTogglerTheme.standard(),
              itemTheme: SideNavigationBarItemTheme.standard(),
              dividerTheme: SideNavigationBarDividerTheme.standard(),
            ),
          ),
          Expanded(
            child: pages.elementAt(selectedIndex),
          )
        ],
      ),
    );
  }
}
