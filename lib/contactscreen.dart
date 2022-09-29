import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  Color greenColorButton = const Color(0xFF26d367);
  Color greenColor = const Color(0xFF008071);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(

          backgroundColor: greenColor,
          child: Icon(Icons.arrow_forward,color: Colors.white,),
          onPressed: (){},
        ),
      ),



      appBar: AppBar(
        backgroundColor: greenColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New group",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              "Add participants",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 14,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            itemCount: 12,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(""
                      "https://images.unsplash."
                      "com/photo-1438761681033-6461ff"
                      "ad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8f"
                      "DB8fA%3D%3D&w=1000&q=80"),
                ),
                title: Text("Abi"),
                subtitle: Text("Hey there! i am using WhatsApp"),
              );
            }),
      ),
    );
  }
}
