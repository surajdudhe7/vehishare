import 'package:firebase_database/firebase_database.dart';

class UserModel {
  String? phone;
  String? name;
  String? id;
  String? email;
  String? address;

  UserModel({
    this.phone,
    this.id,
    this.address,
    this.email,
    this.name,
  });

  UserModel.fromSnapshot(DataSnapshot snap) {
    phone = (snap.value as dynamic)["phone"];
    email = (snap.value as dynamic)["phone"];
    name = (snap.value as dynamic)["phone"];
    address = (snap.value as dynamic)["phone"];
    id = snap.key;
  }
}
