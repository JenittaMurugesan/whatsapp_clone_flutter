import 'package:flutter/material.dart';

class NewBroadcast extends StatefulWidget {
  const NewBroadcast({Key? key}) : super(key: key);

  @override
  State<NewBroadcast> createState() => _NewBroadcastState();
}

class _NewBroadcastState extends State<NewBroadcast> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: CircleAvatar(
          child: Icon(Icons.check,color: Colors.white,size: 32,),
        radius: 28,
          backgroundColor: greenColor,),

      onPressed:(){} ,
      ),
      appBar: AppBar(

        backgroundColor: greenColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New broadcast",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "0 of 256 selected",
              style: TextStyle(fontSize: 14),
            ),

          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                child: Text(
                  "Only contacts with +91 8946039584 in their address "
                  "book will receive your broadcast messages.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
            ),
            Column(
              children: [

                Divider(thickness: .3,),

                ListView.builder(

                    itemCount: 12,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://www.sanjayjangam.com/wp-content/uploads/2021/12/beautiful-dp-for-whatsapp.jpg"),
                        ),
                        title: Text("Abi"),
                        subtitle: Text("Every Success with a dream...."),
                      );
                    }),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
