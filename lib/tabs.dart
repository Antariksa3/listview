import 'package:flutter/material.dart';
import 'package:listview/tab_1.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  List<Widget> listTab = [
    Tab(
      icon: Icon(Icons.person),
    ),
    Tab(
      icon: Icon(Icons.chat),
    ),
    Tab(
      icon: Icon(Icons.phone),
    )
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: listTab.length, vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
      print("Selected Index: " + _tabController.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index) {},
            controller: _tabController,
            tabs: listTab,
          ),
          title: Text(
            'Tab Layout',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple[600],
        ),
        body: TabBarView(controller: _tabController, children: [
          List_Siswa(),
          Center(
              child: Text(
            "Coming Soon",
            style: TextStyle(fontSize: 20),
          )),
          Center(
              child: Text(
            "Kaming Sun",
            style: TextStyle(fontSize: 20),
          )),
        ]),
      ),
    );
  }
}
