import 'package:firebase_auth/firebase_auth.dart';
import 'package:vehishare/models/user_model.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
User? curretUser;
UserModel? userModelCurrentInfo;
