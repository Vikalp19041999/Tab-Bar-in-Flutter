import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_balance_wallet)),
                Tab(icon: Icon(Icons.add_comment)),
                Tab(icon: Icon(Icons.youtube_searched_for)),
              ],
            ),
            title: Text(
              'Tab Bar View',
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: TabBarView(
            children: [
              Icon(Icons.account_balance_wallet),
              Icon(Icons.add_comment),
              Icon(Icons.youtube_searched_for),
            ],
          ),
        ),
      ),
    );
  }
}
