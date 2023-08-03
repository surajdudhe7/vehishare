import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pinput.dart';
import 'package:vehishare/screens/Phone_verify/phone_otp.dart';
import '../../global/global.dart';
import '../main_screen.dart';

class MyVerify extends StatefulWidget {
  const MyVerify({Key? key}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}

class _MyVerifyState extends State<MyVerify> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late User? currentUser;
  var code = "";
  final _formKey = GlobalKey<FormState>();

  void _submit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: MyPhone.verify,
          smsCode: code,
        );

        // Sign the user in (or link) with the credential
        await auth.signInWithCredential(credential);
        currentUser = auth.currentUser;

        await Fluttertoast.showToast(msg: "Successfully Logged In.");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (c) => MainScreen()),
        );
      } catch (e) {
        Fluttertoast.showToast(msg: "OTP is not valid.");
      }
    } else {
      Fluttertoast.showToast(msg: "Not all fields are valid.");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool darkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: darkTheme ? Colors.white : Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/img1.png',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 25),
              Text(
                "Phone Verification",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: darkTheme ? Colors.amber.shade400 : Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We need to verify your phone number to get started!",
                style: TextStyle(
                  fontSize: 16,
                  color: darkTheme ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Pinput(
                  length: 6,
                  showCursor: true,
                  onChanged: (value) {
                    setState(() {
                      code = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: darkTheme ? Colors.amber.shade400 : Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () {
                    _submit(context);
                  },
                  child: Text(
                    'Verify Phone Number',
                    style: TextStyle(
                      fontSize: 15,
                      color: darkTheme ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (c) => MyPhone()),
                  );
                },
                child: Text(
                  "Edit Phone Number?",
                  style: TextStyle(
                    color: darkTheme ? Colors.amber.shade400 : Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
