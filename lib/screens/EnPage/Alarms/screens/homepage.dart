import 'package:flutter/material.dart';
import 'package:App_SHe/screens/EnPage/Alarms/screens/clockpage.dart';
import 'package:provider/provider.dart';
import 'package:App_SHe/Theme-Library/Theme-Colors.dart';
import 'package:App_SHe/widgets/menubuttons.dart';
import 'package:App_SHe/main.dart';

class Alarms extends StatefulWidget {
  const Alarms({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Alarms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text("Alarms"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const MyApp(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Actions");
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
                menuitems.map((menuitem) => buildMenuButton(menuitem)).toList(),
          ),
          SizedBox(height: 25),
          Expanded(
            child: Consumer<MenuButton>(
              builder: (context, value, child) {
                if (value.menu == MenuIcon.clock)
                  return ClockPage();
                else
                  return Container();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuButton(MenuButton currentmenu) {
    return Consumer<MenuButton>(
      builder: (context, value, child) {
        var icondata = value.menu == currentmenu.menu
            ? currentmenu.menu.active
            : currentmenu.menu.inactive;

        var iconcolor =
            value.menu == currentmenu.menu ? AppColors.Purple : AppColors.grey;

        var shadowcolor = value.menu == currentmenu.menu
            ? AppColors.Purple
            : Colors.transparent;

        return ElevatedButton(
          onPressed: () {
            var menubutton = Provider.of<MenuButton>(context, listen: false);
            menubutton.updateMenu(currentmenu);
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            enableFeedback: true,
            elevation: MaterialStateProperty.all<double>(10),
            shadowColor: MaterialStateProperty.all<Color>(shadowcolor),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          child: Icon(
            icondata,
            size: 30,
            color: iconcolor,
          ),
        );
      },
    );
  }
}
