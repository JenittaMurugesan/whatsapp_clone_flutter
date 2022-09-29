import 'package:flutter/material.dart';
class LinkedDevicesScreen extends StatefulWidget {
  const LinkedDevicesScreen({Key? key}) : super(key: key);

  @override
  State<LinkedDevicesScreen> createState() => _LinkedDevicesScreenState();
}

class _LinkedDevicesScreenState extends State<LinkedDevicesScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text("Linked devices"),
      ),
body: Column(
  children: [
    Container(
height: 250,

      decoration: BoxDecoration(
          color: Colors.black,
        image: DecorationImage(
          image: NetworkImage("https://i.postimg.cc/nVYjcLLF/linked-devices-2.jpg"),
          fit: BoxFit.cover
        )

      ),
child: null,


    ),
  ],
),


    );
  }
}
