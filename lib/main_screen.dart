import 'package:flutter/material.dart';
import 'package:untitled4/callscreen.dart';
import 'package:untitled4/chat_screen.dart';
import 'package:untitled4/statusscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Tab> tabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(
      text: 'CHATS',

    ),
    Tab(text: 'STATUS'),
    Tab(
      text: 'CALLS',
    ),

  ];
  Color greenColor = const Color(0xFF007d6f);
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: tabs,
          ),
          backgroundColor: greenColor,
          automaticallyImplyLeading: false,
          title: const Text("WhatsApp"),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 8,
            ),
          ],
        ),
        body: TabBarView(

          children: [
            ChatScreen(),
            ChatScreen(),
           StatusScreen(),
            CallScreen(),
        ],
        ),
      ),
    );
  }
}
