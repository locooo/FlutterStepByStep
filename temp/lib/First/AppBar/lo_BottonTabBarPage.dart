import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOBottomNavigationBarPage extends StatefulWidget {
  LOBottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  _LOBottomNavigationBarPageState createState() =>
      _LOBottomNavigationBarPageState();
}

class _LOBottomNavigationBarPageState extends State<LOBottomNavigationBarPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  static const _kTabPages = <Widget>[
    Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
    Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
    Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
  ];
  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
    Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
    Tab(icon: Icon(Icons.forum), text: 'Tab3'),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottomNavigationBar"),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
