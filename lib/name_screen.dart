import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            bottom: 50.0,
          ),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black54,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black54,
              size: 24,
            ),
          )
        ],
        title: Center(
          child: CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(
                "https://cdn.statusqueen.com/dpimages/thumbnail/Cute_Exam__Whatsapp_dp_image-1368.jpg"),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Center(
                  child: Text(
                "Murugesan Tendulkar",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              )),
            ),
            Text("+91 9655748359"),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Text("Last seen yesterday at 11AM"),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    color: greenColor,
                  ),
                  SizedBox(
                    width: 58,
                  ),
                  Icon(
                    Icons.video_camera_back,
                    color: greenColor,
                  ),
                  SizedBox(
                    width: 58,
                  ),
                  Icon(
                    Icons.currency_rupee_outlined,
                    color: greenColor,
                  ),
                  SizedBox(
                    width: 58,
                  ),
                  Icon(
                    Icons.search,
                    color: greenColor,
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width / 1,
              height: 65,
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 228.0),
                    child: Text(
                      "Urgent calls only",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 258.0),
                    child: Text(
                      "September 21",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              color: Colors.white,
              height: 159,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            "Mute notifications",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Custom notifications",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "Media visibility",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            "Starred messages",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Text(
                        "16",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              color: Colors.white,
              height: 125,
              child: Column(

                children: [

                      Row(

                        children: [
                          SizedBox(
                            width: 18,height: 12,
                          ),
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text("Encryption")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 34.0,right: 75),
                        child: Text(
                          "Messages and calls are end-to-end encrypted. Tap to verify.",style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text("Disappearing messages"),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 238.0),
                        child: Text("off"),
                      ),



                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 78,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Text("No groups in common"),

                  ),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: CircleAvatar(radius: 18,
                        backgroundColor: greenColor,
                        child: Icon(Icons.group,color: Colors.white,),),
                      ),
                      SizedBox(width: 18,),
                      Text("Create group with Murugesan")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 85,
              color: Colors.white,

              child: Column(

                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 24,),
                      Icon(Icons.block,color: Colors.red,),
                      SizedBox(width: 24,),
                      Text("Block Murugesan Tendulkar",style: TextStyle(color: Colors.red),)
                    ],
                  ),
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      SizedBox(width: 24,),
                      Icon(Icons.thumb_down,color: Colors.red,),
                      SizedBox(width: 24,),
                      Text("Report Murugesan Tendulkar",style: TextStyle(color: Colors.red),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
