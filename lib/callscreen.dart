import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<CallScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body:
            Container(
              child:
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg",
                          ),
                        ),
                        title: Text("Murugesan Tendulkar"),

                        subtitle:

                            Row(
                              children: [
                                Icon(Icons.call_made,color: Colors.green,size: 18,),
                                SizedBox(width: 2,),
                                Text("(2) Today, 10:12 AM"),
                              ],
                            ),


                        trailing: Icon(
                          Icons.call,color:greenColor ,
                        ),

                      );
                    })
            )





    );
  }
}
