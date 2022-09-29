import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(
                  "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg",
                ),
              ),
              title: Text("Jenitta Murugesan"),
              subtitle: Text(
                "Be patient. The best things h...",
                style: TextStyle(fontSize: 13),
              ),
              trailing: Icon(
                Icons.contacts_rounded,
                color: greenColor,
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 12),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.key),
                    title: Text("Acoount",style: TextStyle(fontSize: 16),),
                    subtitle: Text("Privacy, security, change number"),
                  ),
                  ListTile(
                    leading: Icon(Icons.chat_sharp),
                    title: Text("Chats",style: TextStyle(fontSize: 16),),
                    subtitle: Text("Theme, wallpapers, chat history"),
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_important),
                    title: Text("Notifications",style: TextStyle(fontSize: 16),),
                    subtitle: Text("Message, group @ call tones"),
                  ),
                  ListTile(
                    leading: Icon(Icons.storage),
                    title: Text("Storage and data",style: TextStyle(fontSize: 16),),
                    subtitle: Text("Network usage, auto-download"),
                  ),
                  ListTile(
                    leading: Icon(Icons.language_sharp),
                    title: Text("App language",style: TextStyle(fontSize: 16),),
                    subtitle: Text("English(phone's language)"),
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text("Help",style: TextStyle(fontSize: 16),),
                    subtitle: Text("Help center, contact us, privacy policy"),
                  ),
                  ListTile(
                    leading: Icon(Icons.group),
                    title: Text("Invite a friend"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "from",
              style: TextStyle(color: Colors.black54),
            ),
            Text("Meta"),
          ],
        ),
      ),
    );
  }
}
