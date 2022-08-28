import 'package:flutter/material.dart';
import 'package:utility/mess.dart';
import 'package:utility/schedule.dart';

const iconColor = Color.fromARGB(255, 122, 122, 122);
const iconBack = Colors.white54;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink,
                child: Schedule(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    Container(
                      // navigation bar buttons
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
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
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Schedule();
                                  },
                                ),
                              ),
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
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Mess();
                                  },
                                ),
                              ),
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
                              onPressed: () {},
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
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
