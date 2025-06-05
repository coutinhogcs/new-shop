import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        toolbarHeight: 45,
        backgroundColor: Color(0xffbebebe),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.person, size: 90, color: Color(0xffe6f877)),
            Text("Hello Guilherme!", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      backgroundColor: Color(0xffe6f877),
    );
  }
}
