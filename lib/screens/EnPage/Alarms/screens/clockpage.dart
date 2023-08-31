import 'package:flutter/material.dart';
import 'package:App_SHe/Theme-Library/Theme-Colors.dart';
import 'package:App_SHe/widgets/worldmap.dart';
import 'package:App_SHe/widgets/digitalclock.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 230,
              child: WorldMap(),
            ),
            SizedBox(height: 20),
            DigitalClock(),
            SizedBox(height: 35),
            Container(
              height: 195,
              width: 350,
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: false,
                physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      border: Border.all(
                        color: AppColors.white,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(50, 50)),
                elevation: MaterialStateProperty.all<double>(7),
                shape: MaterialStateProperty.all(CircleBorder()),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.Purple),
                shadowColor: MaterialStateProperty.all<Color>(AppColors.Purple),
              ),
              child: Icon(
                Icons.add,
                color: AppColors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
