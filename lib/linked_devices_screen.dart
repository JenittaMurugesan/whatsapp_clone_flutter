import 'package:flutter/material.dart';

class LinkedDevicesScreen extends StatefulWidget {
  const LinkedDevicesScreen({Key? key}) : super(key: key);

  @override
  State<LinkedDevicesScreen> createState() => _LinkedDevicesScreenState();
}

class _LinkedDevicesScreenState extends State<LinkedDevicesScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  Color scaffoldColor = const Color(0xFFf7f8fa);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text("Linked devices"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Center(
              child: Column(
                children: [
                  Image.network(
                      "https://i.postimg.cc/nVYjcLLF/linked-devices-2.jpg",
                      width: MediaQuery.of(context).size.width / 1.2),
                  Text(
                    "Use Whatsapp on other devices",
                    style: TextStyle(color: Colors.black, fontSize: 19),
                  ),
                  MaterialButton(
                      color: greenColor,
                      padding: EdgeInsets.only(
                          left: deviceWidth / 3.2, right: deviceWidth / 3.2),
                      child: Text(
                        "LINK A DEVICE",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {}),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: RichText(
                            maxLines: 2,
                            text: TextSpan(
                                text: 'Your personal messages are ',
                                style: TextStyle(color: Colors.black38),
                                children: [
                                  TextSpan(
                                    text: 'end-to-end encrypted',
                                    style: TextStyle(color: greenColor),
                                  ),
                                  TextSpan(
                                    text: ' on all your devices',
                                    style: TextStyle(color: Colors.black38),
                                  )
                                ])),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(

            width: deviceWidth,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(
                    "DEVICE STATUS",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    "Tap a device yo log out",
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  ),
                ),
                SizedBox(height: 8,),
                ListTile(
                  leading: Image.asset('assets/images/microsoft.png',width: 40,),
                  title: Text("Microsoft Edge (Windows)"),
                  subtitle: Text("Last active today at 9:25 AM"),
                ),
                ListTile(
                  leading: Image.asset('assets/images/windows.png',width: 40),
                  title: Text("Windows"),
                  subtitle: Text("Last active today at 9:25 AM"),
                ),
                ListTile(
                  leading: Image.asset('assets/images/firefox.png',width: 40),
                  title: Text("Firefox (Windows)"),
                  subtitle: Text("Last active today at 9:25 AM"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
