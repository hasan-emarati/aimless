import 'package:flutter/material.dart';
import 'package:App_SHe/Theme-Library/Theme.dart';

class search extends StatefulWidget {
  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<search> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    ThemeLibraryLight();
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: _folded ? 56 : 200,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color.fromARGB(255, 59, 59, 59),
        boxShadow: kElevationToShadow[6],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: !_folded
                  ? const TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Color(0xff7f00ff),
                          ),
                          border: InputBorder.none),
                    )
                  : null,
            ),
          ),
          Container(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  //here you can costomize the length you want the search bar to expand.
                  topLeft: Radius.circular(_folded ? 32 : 0),
                  topRight: const Radius.circular(32),
                  bottomLeft: Radius.circular(_folded ? 32 : 0),
                  bottomRight: const Radius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    _folded ? Icons.search : Icons.close,
                    color: const Color(0xff7f00ff),
                  ),
                ),
                onTap: () {
                  setState(
                    () {
                      //here i am only keeping the open and close method,
                      //you can change
                      _folded = !_folded;
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
