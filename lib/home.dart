import 'package:flutter/material.dart';
import 'package:utility/about.dart';
import 'package:utility/mess.dart';
import 'package:utility/schedule.dart';
import 'package:utility/todoPage.dart';
import 'package:utility/data.dart';

const iconColor = Color.fromARGB(255, 122, 122, 122);
const iconBack = Colors.white54;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    const Schedule(),
    const Mess(),
    const TodoPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            // navigation bar buttons
            height: 90,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: colorScheme[pageIndex]![2],
              boxShadow: [
                BoxShadow(
                  color: colorScheme[pageIndex]![3],
                  blurRadius: 50,
                  spreadRadius: -12,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                // navigation bar buttons
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: iconBack,
                      child: IconButton(
                        icon: Icon(
                          Icons.table_chart,
                          color: iconColor,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              pageIndex = 0;
                            },
                          );
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: iconBack,
                      child: IconButton(
                        icon: Icon(
                          Icons.local_pizza,
                          color: iconColor,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              pageIndex = 1;
                            },
                          );
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: iconBack,
                      child: IconButton(
                        icon: Icon(
                          Icons.timer,
                          color: iconColor,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              pageIndex = 2;
                            },
                          );
                        },
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: iconBack,
                      child: IconButton(
                        icon: Icon(
                          Icons.person,
                          color: iconColor,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              pageIndex = 3;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent),
            ],
          ),
        ],
      ),
    );
  }
}
