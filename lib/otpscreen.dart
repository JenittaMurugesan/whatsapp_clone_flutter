
import 'package:flutter/material.dart';
import 'package:untitled4/otp_verification_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  Color greenColor = const Color(0xFF007d6f);
  Color greenColorButton = const Color(0xFF26d367);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Verify your phone number",
          style: TextStyle(color: greenColor, fontSize: 25),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Whatsapp will send an SMS message (carrier charges may apply to verify your phone number. Enter your country code and phone number ",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: greenColor),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                    hintText: 'Phone number',
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 20),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: greenColor)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greenColor,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> OtpVerificationScreen()));

                },
                color: greenColorButton,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'You must be ',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'at least 16 years old ',
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: 'to register ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Learn how Whatsapp works with the ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Facebook Companies.',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
