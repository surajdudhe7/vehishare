import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vehishare/new_screens/inox_screen.dart';
import 'package:vehishare/new_screens/mainscreen.dart';
import 'package:vehishare/new_screens/publish_screen.dart';
import 'package:vehishare/new_screens/your_rides.dart';
import 'package:vehishare/screens/login_screen.dart';
import 'package:vehishare/screens/main_screen.dart';
import 'package:vehishare/screens/options.dart';
import 'package:vehishare/screens/register_screen.dart';
import 'package:vehishare/splash_screen/splash_screen.dart';
import 'package:vehishare/theme_provider/theme_provider.dart';

import 'firebase_options.dart';


Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter App",
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home:MainScreen1(),
    );
  }
}
