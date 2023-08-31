import 'package:flutter/material.dart';

const int itemCount = 20;

class EnginPage extends StatelessWidget {
  const EnginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.select_all),
          onTap: () {
            debugPrint('Item ${(index + 1)} selected');
          },
        );
      },
    );
  }
}
