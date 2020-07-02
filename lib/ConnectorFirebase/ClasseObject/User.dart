import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id = '@';
  String passWord='@';

  User();

  User.fromFirestore(DocumentSnapshot documentSnapshot) {
    Map<String, dynamic> m = documentSnapshot.data;
    id = m['id'];
    passWord = m['passWord'];
  }


  toMap() {
    return <String, dynamic>{
      'id': id,
      'passWord': passWord,
    };
  }
}