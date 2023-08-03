import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehishare/new_screens/inox_screen.dart';
import 'package:vehishare/new_screens/mainscreen.dart';
import 'package:vehishare/new_screens/publish_screen.dart';
import 'package:vehishare/new_screens/your_rides.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
    
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 100),
            Text(
              'Enter the pick-up address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(100),
                              ],
                              decoration: InputDecoration(
                                hintText: 'Enter the full address',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              
                            ),
          ],
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
              onPressed: () {
                
                Navigator.push(context,MaterialPageRoute(builder: (c) => InboxScreen()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              
                color: Colors.blue,
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
