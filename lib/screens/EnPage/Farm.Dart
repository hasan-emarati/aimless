import 'package:flutter/material.dart';
import 'package:App_SHe/Theme-Library/Theme.dart';

import 'package:side_navigation/side_navigation.dart';

import 'package:App_SHe/screens/EnPage/search-bar/search.dart';
import 'package:App_SHe/screens/EnPage/search-bar/searchBar.dart';

import 'package:App_SHe/screens/EnPage/Farm-routes/Animal-movements.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Animals-and-operations.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Browse-the-herd.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Daily-production.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Evaluation-of-breeding-center.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Quick-report.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Report-entries.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/Sperm-bank.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/batch-entry.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/herd-composition.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/herd-management.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/pharmacy.dart';
import 'package:App_SHe/screens/EnPage/Farm-routes/the-last-situation.dart';

void main() {
  runApp(const FarmPage());
}

class FarmPage extends StatefulWidget {
  const FarmPage({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<FarmPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    AnimalMovements(),
    AnimalsAndOperations(),
    batchEntry(),
    BrowseTheHerd(),
    DailyProduction(),
    EvaluationOfBreedingCenter(),
    herdComposition(),
    herdManagement(),
    pharmacy(),
    QuickReport(),
    ReportEntries(),
    SpermBank(),
    theLastSituation(),
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
                icon: Icons.construction,
                label: 'Animal Movements',
              ),
              SideNavigationBarItem(
                icon: Icons.alt_route_sharp,
                label: 'Animals And Operations',
              ),
              SideNavigationBarItem(
                icon: Icons.ballot_outlined,
                label: 'BatchEntry',
              ),
              SideNavigationBarItem(
                icon: Icons.preview,
                label: 'Browse TheHerd',
              ),
              SideNavigationBarItem(
                icon: Icons.production_quantity_limits,
                label: 'Daily Production',
              ),
              SideNavigationBarItem(
                icon: Icons.analytics_outlined,
                label: 'Evaluation Of Breeding Center',
              ),
              SideNavigationBarItem(
                icon: Icons.auto_fix_normal,
                label: 'herd Composition',
              ),
              SideNavigationBarItem(
                icon: Icons.checklist,
                label: 'herd Management',
              ),
              SideNavigationBarItem(
                icon: Icons.vaccines,
                label: 'pharmacy',
              ),
              SideNavigationBarItem(
                icon: Icons.report_gmailerrorred,
                label: 'Quick Report',
              ),
              SideNavigationBarItem(
                icon: Icons.report_problem_sharp,
                label: 'Report Entries',
              ),
              SideNavigationBarItem(
                icon: Icons.savings,
                label: 'Sperm Bank',
              ),
              SideNavigationBarItem(
                icon: Icons.content_paste,
                label: 'theLast Situation',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            // Change the background color and disabled header/footer dividers
            // Make use of standard() constructor for other themes
            theme: SideNavigationBarTheme(
              backgroundColor: Color.fromARGB(106, 0, 0, 0),
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
