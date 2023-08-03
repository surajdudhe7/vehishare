import 'package:flutter/material.dart';
import 'package:vehishare/screens/register_screen.dart';
import 'login_screen.dart';

class MyOption extends StatefulWidget {
  const MyOption({Key? key}) : super(key: key);

  @override
  State<MyOption> createState() => _MyOptionState();
}

class _MyOptionState extends State<MyOption> {
  @override
  Widget build(BuildContext context) {
    bool darkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Container(
       // margin: EdgeInsets.symmetric(horizontal: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                darkTheme
                    ? 'assets/images/011.png'
                    : 'assets/images/02.png',
                width: 400,
                height: 400,
              ),
              Text(
                "Pick Of Your Rides",
                style: TextStyle(
                  color:darkTheme
                    ? Colors.white
                    : Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:darkTheme? Colors.amber.shade400:Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: darkTheme? Colors.black: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: darkTheme? Colors.black: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    side: BorderSide(
                      color:darkTheme? Colors.amber.shade400:Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: darkTheme? Colors.amber.shade400:Colors.blue,
                      fontSize: 20,
                    ),
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
