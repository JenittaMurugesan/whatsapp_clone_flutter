import 'package:flutter/material.dart';
import 'package:untitled4/profile_setup_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  Color greenColor = const Color(0xFF007d6f);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Verify +1 (555) 123-4567",
            style: TextStyle(color: greenColor, fontSize: 16),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text:
                          ' Waiting to automatically detect an SMS send  to \n+1 (555) 123-4567.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                            text: ' Wrong number?',
                            style: TextStyle(color: Colors.blue))
                      ]),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(

                  width: MediaQuery.of(context).size.width / 2.5,
                  child: TextFormField(
                    onChanged: (number)
                    {
                      if(number.length ==6){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> ProfileSetupScreen()));
                      }

                    },
                    cursorColor: greenColor,
                    style: TextStyle(fontSize: 24, letterSpacing: 6),
                    textAlign: TextAlign.center,
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greenColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greenColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Enter 6-digit code",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                            Text(
                            "Resent SMS",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )  ,
                      Text("59:00"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(
                  thickness: 1.3,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: greenColor,
                      ),
                      SizedBox(width:18 ,),
                      RichText(
                          text: TextSpan(
                        text: 'Call me',
                        style: TextStyle(color: greenColor,fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
