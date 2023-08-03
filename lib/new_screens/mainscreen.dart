import 'package:flutter/material.dart';
import 'package:vehishare/new_screens/profile_screen.dart';
import 'package:vehishare/new_screens/publish_screen.dart';
import 'package:vehishare/new_screens/your_rides.dart';

import 'inox_screen.dart';

class MainScreen1 extends StatefulWidget {
  @override
  _MainScreen1State createState() => _MainScreen1State();
}

class _MainScreen1State extends State<MainScreen1> {
  TextEditingController destinationController = TextEditingController();
  TextEditingController pickupController = TextEditingController();
  TextEditingController numPersonsController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  String selectedDateText = 'Select Date'; // Initial hint text
  int numberOfPersons = 0;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        selectedDateText =
            '${selectedDate.toLocal()}'.split(' ')[0]; // Update the selected date text
      });
    }
  }

  void submitAction() {
    String destination = destinationController.text;
    String pickupLocation = pickupController.text;
    int numPersons = int.tryParse(numPersonsController.text) ?? 0;
    DateTime date = selectedDate;

    // Add your code here to process the data or show a dialog with the submitted details
  }

  void incrementPersons() {
    setState(() {
      numberOfPersons++;
    });
  }

  void decrementPersons() {
    setState(() {
      if (numberOfPersons > 0) {
        numberOfPersons--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool darkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      body: Stack( // Use Stack widget to overlay the image as the background
        children: [
          Image.asset(
            'assets/images/012.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container( // Outer container to group the input fields
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                       color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Pick your rides at a low price',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: destinationController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.circle_outlined),
                            hintText: 'Destination',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: pickupController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.circle_outlined),
                            hintText: 'Pickup Location',
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.calendar_today),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () => _selectDate(context),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent, // Remove the background color
                                elevation: 0,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 5),
                                  Text(
                                    selectedDateText, // Show the selected date or hint text
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).hintColor,
                                      // Use hint text color from the current theme
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Theme.of(context).hintColor, // Add a horizontal line
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(width: 20),
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: decrementPersons,
                            ),
                            Text(
                              numberOfPersons.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: incrementPersons,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Theme.of(context).hintColor, // Add a horizontal line
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: darkTheme
                                ? Colors.amber.shade400
                                : Colors.blue,
                            onPrimary: darkTheme ? Colors.black : Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            minimumSize: Size(double.infinity, 50),
                          ),
                          onPressed: submitAction, // Call the submitAction method on button press
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.blue,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => PublishScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.car_crash_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => YourRides()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.message_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => InboxScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person_2_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => ProfileScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
