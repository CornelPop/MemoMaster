import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:memomaster/Services/Database.dart';

class Database_service {

  //collection reference
  final CollectionReference dataCollection = FirebaseFirestore.instance.collection('data');
  final String? uid;
  Database_service({ this.uid });

  Future updateUserData (String name, int winsNumber) async {
    return await dataCollection.doc(uid).set({
      'name': name,
      'winsNumber': winsNumber,
    });
  }

  //get data stream
  Stream <QuerySnapshot> get data {
    return dataCollection.snapshots();
  }
}