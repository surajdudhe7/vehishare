import 'package:firebase_database/firebase_database.dart';
import 'package:geolocator/geolocator.dart';
import 'package:vehishare/assistant/request_assistant.dart';
import 'package:vehishare/models/user_model.dart';
import '../global/global.dart';
import '../global/map_key.dart';
import '../models/directions.dart';

class AssistantMethods {
  static void readCurrentOnlineUserInfo() async {
    curretUser = firebaseAuth.currentUser;
    DatabaseReference userRef =
        FirebaseDatabase.instance.ref().child("users").child(curretUser!.uid);
    userRef.once().then((snap) {
      if (snap.snapshot.value != null) {
        userModelCurrentInfo = UserModel.fromSnapshot(snap.snapshot);
      }
    });
  }

  static Future<String> searchAddressForGeographicCoordinates(
      Position position, context) async {
    String apiUrl = "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapkey";
    String humanReadableAddress = "";
    var requestResponse = await RequestAssistant.receiveRequest(apiUrl);
   
   if(requestResponse != "Error Occured. Failed. No Response."){
    humanReadableAddress = requestResponse["results"][0]["formatted_address"];
    Directions userPickUpAddress = Directions();
    userPickUpAddress.locationLatitude = position.latitude;
    userPickUpAddress.locationLongitude = position.longitude;
    userPickUpAddress.locationName = humanReadableAddress;
    //Provider.of<AppInfo>(context, listen: false).updatePickUpLocationAddress(userPickUpAddress);
   }
   return humanReadableAddress;
  }
}
