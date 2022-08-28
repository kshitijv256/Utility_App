import 'package:flutter/material.dart';
import 'package:utility/data.dart';

const color1 = Color.fromARGB(255, 70, 212, 134);
const color2 = Color.fromARGB(255, 35, 169, 95);
const color3 = Color.fromARGB(255, 23, 139, 75);
const shadows = Color.fromARGB(255, 29, 110, 66);

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  // material design
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(200),
                      ),
                      color: color3,
                      boxShadow: [
                        BoxShadow(
                          color: shadows,
                          blurRadius: 50,
                          spreadRadius: -12,
                        ),
                      ]),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(150),
                    ),
                    color: color2,
                    boxShadow: [
                      BoxShadow(
                        color: shadows,
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100),
                      ),
                      color: color1,
                      boxShadow: [
                        BoxShadow(
                          color: shadows,
                          blurRadius: 50,
                          spreadRadius: -12,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 120,
                    left: 200,
                  ),
                  child: Text(
                    'Schedule',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 110, 66),
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: list1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: (index % 2 == 0) ? 20 : 250,
                    ),
                    child: ListTile(
                      title: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),
            Container(
              // navigation bar buttons
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: color3,
                boxShadow: [
                  BoxShadow(
                    color: shadows,
                    blurRadius: 50,
                    spreadRadius: -12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
