import 'package:flutter/material.dart';
import 'package:utility/data.dart';

const color1 = Color.fromARGB(255, 212, 186, 70);
const color2 = Color.fromARGB(255, 169, 158, 35);
const color3 = Color.fromARGB(255, 139, 133, 23);
const shadows = Color.fromARGB(255, 109, 110, 29);

class Mess extends StatefulWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  State<Mess> createState() => _MessState();
}

class _MessState extends State<Mess> {
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
                    'Mess',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: color3,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: list2.length,
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
          ],
        ),
      ),
    );
  }
}
