import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<String> uploadData(
    String name,
    String fName,
  ) async {
    String res = 'Some Error Occured';
    try {
      await firebaseFirestore.collection('Data').doc().set({
        'Name': name,
        'fName': fName,
        'Date': DateTime.now(),
      });
      res = 'success';
    } on FirebaseException catch (e) {
      res = e.message.toString();
    }
    return res;
  }
}
