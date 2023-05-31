import 'package:flutter/material.dart';

class Code11_32_36 extends StatefulWidget {
  const Code11_32_36({Key? key}) : super(key: key);

  @override
  State<Code11_32_36> createState() => _Code11_32_36State();
}

class _Code11_32_36State extends State<Code11_32_36> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Good Morning, John",
              style: TextStyle(fontSize: 16.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Dashboard"),
            )
          ],
        ),
        toolbarHeight: 100.0,
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 60.0,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: "About",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.note),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () {},
              child: Text("Contacts"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Notifications"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Reports"),
            ),
          ],
        ),
      ),
    );
  }
}
