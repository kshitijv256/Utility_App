import 'package:flutter/material.dart';
import 'package:utility/data.dart';

class Mess extends StatelessWidget {
  const Mess({Key? key}) : super(key: key);

  static const pageid = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme[pageid]![0].withOpacity(0.6),
            Colors.white,
            Colors.white,
          ],
        ),
      ),
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
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(200),
                    ),
                    color: colorScheme[pageid]![2],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[pageid]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(150),
                  ),
                  color: colorScheme[pageid]![1],
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme[pageid]![3],
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
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(100),
                    ),
                    color: colorScheme[pageid]![0],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[pageid]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                  left: 250,
                ),
                child: Text(
                  'Mess',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: colorScheme[pageid]![1],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 520,
            width: 350,
            child: ListView.builder(
              itemCount: list2.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme[pageid]![3],
                          blurRadius: 40,
                          spreadRadius: -15,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          list2[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colorScheme[pageid]![3],
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 15.0),
                        child: Text(
                          list2[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: colorScheme[pageid]![3],
                          ),
                        ),
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
