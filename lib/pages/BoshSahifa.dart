import 'package:flutter/material.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({super.key});

  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: "Ishingizni qidiring"),
            ),
          )
        ],
      ),
    );
  }
}
