import 'package:flutter/material.dart';
import 'package:utility/data.dart';

var day = DateTime.now().weekday;

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                    ),
                    color: colorScheme[0]![2],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[0]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(150),
                  ),
                  color: colorScheme[0]![1],
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme[0]![3],
                      blurRadius: 50,
                      spreadRadius: -12,
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    color: colorScheme[0]![0],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[0]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                  left: 200,
                ),
                child: Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: colorScheme[0]![1],
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                (day > 5) ? day = 1 : day;
                return Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: (index % 2 == 0) ? 20 : 80,
                    right: (index % 2 == 0) ? 80 : 20,
                  ),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme[0]![3],
                          blurRadius: 50,
                          spreadRadius: -12,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: Text(
                              schedule[day]![index][0],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: colorScheme[0]![2],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: Text(
                              schedule[day]![index][1],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                schedule[day]![index][2],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme[0]![1],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
