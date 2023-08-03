import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vehishare/new_screens/mainscreen.dart';
import 'package:vehishare/screens/options.dart';
import '../assistant/assistant_method.dart';
import '../global/global.dart';
import '../screens/login_screen.dart';
import '../screens/main_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(Duration(seconds: 3), () async {
      if (await firebaseAuth.currentUser != null) {
        firebaseAuth.currentUser != null
            ? AssistantMethods.readCurrentOnlineUserInfo()
            : null;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MainScreen1()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MyOption()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {

    bool darkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Image.asset(
                  darkTheme ? 'assets/images/3.png' : 'assets/images/3.png'),
            ],
          ),
        ),
      ),
    );
  }
}
