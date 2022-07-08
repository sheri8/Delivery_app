import 'package:cloud_firestore/cloud_firestore.dart';

class FireBase {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<String> UploadData(String name, String number) async {
    String res = "Some error occured";
    try {
      await firebaseFirestore.collection('DATA').doc().set(
          {"Name": name, "Phone Number": number, "Today Date": DateTime.now()});
      res = "Success";
    } on FirebaseException catch (e) {
      res = e.message.toString();
    }
    return res;
  }
}
