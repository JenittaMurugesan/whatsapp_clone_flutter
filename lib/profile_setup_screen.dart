import 'package:flutter/material.dart';
import 'package:untitled4/main_screen.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile Info",
          style: TextStyle(color: greenColor, fontSize: 22),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                "Please provide your name and and an optional profile photo",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.grey.shade400,
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: TextFormField(
                      cursorColor: greenColor,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greenColor, width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greenColor, width: 2),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.emoji_emotions_outlined,
                      size: 32,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
              },
              color: greenColorButton,
              child: const Text(
                "NEXT",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
