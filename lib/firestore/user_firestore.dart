import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestore {
  static final FirebaseFirestore _firebaseFirestoreInstance =
      FirebaseFirestore.instance;
  static final _userCollection = _firebaseFirestoreInstance.collection('user');

  static Future<String?> createUser() async {
    try {
      final newDoc = await _userCollection.add({
        'name': '名無し',
        'image_path':
            'http://illustrain.com/img/work/2016/illustrain09-neko14.png',
      });

      print('アカウント作成完了');
      return newDoc.id;
    } catch (e) {
      print('アカウント作成失敗　==== $e');
      return null;
    }
  }

  static Future<List<QueryDocumentSnapshot>?> fechUsers() async {
    try {
      final snapshot = await _userCollection.get();

      return snapshot.docs;
    } catch (e) {
      print('ユーザー情報の取得失敗　===== $e');
      return null;
    }
  }
}
