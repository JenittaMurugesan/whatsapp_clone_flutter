import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 43,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey,
              child: const Icon(
                Icons.create,
                size: 32,
              ),

            ),


          ),
          SizedBox(height: 12,),
          FloatingActionButton(

            onPressed: () {},
            backgroundColor: greenColor,
            child: const Icon(
              Icons.camera_alt,
              size: 32,
            ),
          )
    ],
      ),
      backgroundColor: Colors.white,
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.transparent,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                              "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg"),
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: CircleAvatar(
                              radius: 11,
                              backgroundColor: greenColor,
                              child: Icon(Icons.add),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My status",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        "Tap to add status update",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 20,
            width: MediaQuery.of(context).size.width / 1.2,
            child: Text(
              "Recent updates",
              style: TextStyle(color: Colors.black),
            ),
          ),






        ],
      ),
    );
  }
}
