import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color greenColor = const Color(0xFF007d6f);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        automaticallyImplyLeading: false,
        title: const Text("WhatsApp"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 16,),
          Icon(Icons.more_vert),
          SizedBox(width: 8,),
        ],
      ),
    );
  }
}
