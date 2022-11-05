import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/firestore/user_firestore.dart';

class RoomFirestore {
  static final FirebaseFirestore _firebaseFirestoreInstance =
      FirebaseFirestore.instance;
  static final _roomCollection = _firebaseFirestoreInstance.collection('room');

  static Future<void> creatRoom(String myUid) async {
    try {
      final docs = await UserFirestore.fechUsers();
      if (docs == null) return;
      docs.forEach((doc) async {
        if (doc.id == myUid) return;
        await _roomCollection.add({
          'joined_user_ids': [doc.id, myUid],
          'created_time': Timestamp.now()
        });
      });
    } catch (e) {
      print('ルームの作成失敗 ==== $e');
    }
  }
}
