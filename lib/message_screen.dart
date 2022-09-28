import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color greenColor = const Color(0xFF007d6f);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Murugesan Tendulkar",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            Text(
              "last seen yesterday at 11 AM",
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            )
          ],
        ),
        leading: new Padding(
          padding: const EdgeInsets.all(5.0),
          child: new CircleAvatar(
            backgroundImage: new NetworkImage(
                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=8"),
          ),
        ),
        actions: <Widget>[
          SizedBox(
            width: 14,
          ),
          Icon(Icons.video_camera_back),
          SizedBox(
            width: 14,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 14,
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: TextFormField(
                      cursorColor: Colors.green,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.currency_rupee_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 26,
              backgroundColor: greenColor,
              child: Icon(
                Icons.mic,
                color: Colors.white,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
