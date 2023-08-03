import 'package:flutter/material.dart';
import 'package:vehishare/new_screens/mainscreen.dart';
import 'package:vehishare/new_screens/profile_screen.dart';
import 'package:vehishare/new_screens/publish_screen.dart';
import 'package:vehishare/new_screens/your_rides.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft, // Align the content at the top-left of the screen
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Inbox',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'No messages right now.',
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
              onPressed: () {
                
                Navigator.push(context,MaterialPageRoute(builder: (c) => YourRides()));
              },
            ),
            IconButton(
              icon: Icon(Icons.message_outlined),
              
              color: Colors.blue,
              onPressed: () {
                // Add your code here for the profile button functionality
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
