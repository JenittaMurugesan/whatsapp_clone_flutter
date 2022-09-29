import 'package:flutter/material.dart';
import 'package:untitled4/callscreen.dart';
import 'package:untitled4/chat_screen.dart';
import 'package:untitled4/linked_devices_screen.dart';
import 'package:untitled4/newbroadcast.dart';
import 'package:untitled4/newgroup.dart';
import 'package:untitled4/settings_screen.dart';
import 'package:untitled4/statusscreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Tab> tabs = <Tab>[
    Tab(
      icon: Icon(Icons.camera_alt),
    ),
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
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: tabs,
          ),
          backgroundColor: greenColor,
          automaticallyImplyLeading: false,
          title: const Text("WhatsApp"),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 16,
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return <PopupMenuEntry<int>>[
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewGroup()),
                      );
                    },
                    child: Text(
                      "New Group",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewBroadcast()));
                    },
                    child: Text(
                      "New broadcast",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LinkedDevicesScreen()));
                    },
                    child: Text(
                      "Linked devices",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Starred messages",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Payments",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                  PopupMenuItem(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsScreen()));
                    },
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
                ];
              },
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
