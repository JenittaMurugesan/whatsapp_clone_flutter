import 'package:flutter/material.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({Key? key}) : super(key: key);

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "856 contacts",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 16,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: (Column(

          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: greenColor,
                          radius: 22,
                          child: Icon(
                            Icons.group,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "New group",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ListTile(
                        leading: (CircleAvatar(
                          backgroundColor: greenColor,
                          radius: 22,
                          child: Icon(
                            Icons.person_add,
                            color: Colors.white,
                          ),
                        )),
                        title: Text(
                          "New contact",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Icon(
                            Icons.contacts_rounded,
                            color: Colors.grey,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.150,
              child: Text("Contacts on WhatsApp"),
            ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 22,
                          backgroundImage: NetworkImage(
                            "https://www.whatsappimages.in/wp-content/uploads/2022/03/"
                                "Beautiful-Rare-Whatsapp-Dp-Profile-Images-pictures-free-hd.jpg",
                          ),
                        ),
                        title: Text("Abi"),
                        subtitle: Text("Every Success start with a Dream...."),
                      );
                    }),
              ),



          ],
        )),
      ),
    );
  }
}
