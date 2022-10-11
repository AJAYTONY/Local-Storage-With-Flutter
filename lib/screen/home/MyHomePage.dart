import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_offline_data_in_flutter/screen/offline/offline_screen.dart';
import 'package:online_offline_data_in_flutter/screen/online/online_Screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: const TabBar(
            // isScrollable: true,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.white,
            tabs: <Tab>[
              Tab(text: "Online"),
              Tab(text: "Offline"),

              // Tab(text: "Online",icon: Icon(Icons.online_prediction)),
              //  Tab(text: "Offline",icon: Icon(Icons.offline_bolt_outlined)),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),  //stop scrolling
          children: [
            // Icon(Icons.directions_car),
            // Icon(Icons.directions_bike),
            OnlineScreen(),
            OfflineScreen()
          ],
        ),
      ),
    );
  }
}
