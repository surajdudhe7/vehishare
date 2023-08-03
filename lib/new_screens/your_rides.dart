import 'package:flutter/material.dart';
import 'package:vehishare/new_screens/inox_screen.dart';
import 'package:vehishare/new_screens/mainscreen.dart';
import 'package:vehishare/new_screens/profile_screen.dart';
import 'package:vehishare/new_screens/publish_screen.dart';

class YourRides extends StatefulWidget {
  const YourRides({Key? key}) : super(key: key);

  @override
  State<YourRides> createState() => _YourRidesState();
}

class _YourRidesState extends State<YourRides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/8.png'), // Replace with your image asset path
              SizedBox(height: 20),
              Text(
                'Your future travel plans will appear here',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Find the perfect rides from a number of rides at a low cost',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.search),
            
              onPressed: () {
                
                Navigator.push(context,MaterialPageRoute(builder: (c) => MainScreen1()));
              },
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {
                
                Navigator.push(context,MaterialPageRoute(builder: (c) => PublishScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.car_crash_outlined),
                color: Colors.blue,
              onPressed: () {
              },
            ),
            IconButton(
              icon: Icon(Icons.message_outlined),
              onPressed: () {
                
                Navigator.push(context,MaterialPageRoute(builder: (c) => InboxScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              onPressed: () {
                
                Navigator.push(context,MaterialPageRoute(builder: (c) => ProfileScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
