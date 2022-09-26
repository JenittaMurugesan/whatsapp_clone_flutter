import 'package:flutter/material.dart';
import 'package:untitled4/message_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Color greenColorButton = const Color(0xFF26d367);
  Color greenColor = const Color(0xFF008071);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: const Icon(
          Icons.message,
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return  ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
            ),
            title: Text(
              "Murugesan Tendulkar",
            ),
            subtitle: Text("Hi"),
            trailing: Text("12.00"),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute( builder: (context) => MessageScreen()));


              },
          );
        },
      ),
    );
  }
}
