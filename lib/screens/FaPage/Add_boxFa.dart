import 'package:flutter/material.dart';

void main() {
  runApp(const AddBaxPage());
}

class AddBaxPage extends StatelessWidget {
  const AddBaxPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 31, 31),
        appBar: AppBar(
          title: const Text("App Bar"),
          backgroundColor: const Color.fromARGB(36, 36, 36, 36),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.toggle_off,
              size: 35,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint("Actions");
              },
              icon: const Icon(Icons.info_outline),
            )
          ],
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                // container 1
                height: 0,
                width: 70,
                color: const Color.fromARGB(255, 37, 36, 36),
                // container 1
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          ('home page');
                        },
                        icon: const Icon(
                          Icons.home,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          ('work page');
                        },
                        icon: const Icon(
                          Icons.work,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          ('engineering page');
                        },
                        icon: const Icon(
                          Icons.engineering,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          ('mail page');
                        },
                        icon: const Icon(
                          Icons.mail,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          ('precision_manufacturing page');
                        },
                        icon: const Icon(
                          Icons.precision_manufacturing,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          debugPrint('smart_toy page');
                        },
                        icon: const Icon(
                          Icons.smart_toy,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: IconButton(
                        onPressed: () {
                          debugPrint('add_box page');
                        },
                        icon: const Icon(
                          Icons.add_box,
                          size: 35,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // container 2
                height: 0,
                width: 270,
                color: const Color.fromARGB(255, 46, 46, 46),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      height: 705,
                      width: 300,
                      color: const Color.fromARGB(36, 36, 36, 36),
                    ),
                    Container(
                      height: 75,
                      width: 300,
                      color: const Color.fromARGB(255, 26, 26, 26),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 60,
                            margin: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            child: const Icon(
                              Icons.account_box,
                              color: Colors.grey,
                              size: 40,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 13, horizontal: 0),
                            child: Column(
                              children: const [
                                Text(
                                  'user name',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  'lisence code',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 24),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    onPressed: () {
                                      debugPrint('settings page');
                                    },
                                    icon: const Icon(
                                      Icons.settings,
                                      size: 35,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
