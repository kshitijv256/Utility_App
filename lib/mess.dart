import 'package:flutter/material.dart';
import 'package:utility/data.dart';

class Mess extends StatelessWidget {
  const Mess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                    ),
                    color: colorScheme[1]![2],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[1]![3],
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
                  color: colorScheme[1]![1],
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme[1]![3],
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
                    color: colorScheme[1]![0],
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme[1]![3],
                        blurRadius: 50,
                        spreadRadius: -12,
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 120,
                  left: 250,
                ),
                child: Text(
                  'Mess',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: colorScheme[1]![1],
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
                    left: 20,
                  ),
                  child: ListTile(
                    title: Text('Item $index'),
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
