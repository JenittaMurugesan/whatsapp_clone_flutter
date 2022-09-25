import 'package:flutter/material.dart';
import 'package:untitled4/otpscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Color greenColor = const Color(0xFF008071);
  Color greenButtonColor = const Color(0xFF00cc3f);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(
                "Welcome to Whatsapp",
                style: TextStyle(fontSize: 30, color: greenColor),
              ),
            ),
            Image.network(
              "https://i.postimg.cc/3xrk2nd9/back.jpg",
              width: 250,
            ),
            Column(
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'Read our ',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Privacy Policy.',
                              style: TextStyle(color: Colors.blue)),
                          TextSpan(
                              text: 'Tap Agree and Continue to accept the'),
                          TextSpan(
                            text: 'Terms and Services',
                            style: TextStyle(color: Colors.blue),
                          )
                        ])),
                const SizedBox(
                  height: 8,
                ),
                MaterialButton(
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const OtpScreen()),
                   );
                 },
                  color: greenButtonColor,
                  height: 25,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "AGREE AND CONTINUE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  "from",
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "FACEBOOK",
                  style: TextStyle(color: greenButtonColor, fontSize: 15),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            )
          ],
        ));
  }
}
