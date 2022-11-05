import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestore {
  static final FirebaseFirestore _firebaseFirestoreInstance =
      FirebaseFirestore.instance;
  static final _userCollection = _firebaseFirestoreInstance.collection('user');

  static Future<void> createUser() async {
    try {
      await _userCollection.add({
        'name': '名無し',
        'image_path':
            'http://illustrain.com/img/work/2016/illustrain09-neko14.png',
      });

      print('アカウント作成完了');
    } catch (e) {
      print('アカウント作成失敗　==== $e');
    }
  }

  static Future<void> fechUsers() async {
    try {
      final snapshot = await _userCollection.get();
      snapshot.docs.forEach((doc) {
        print('ドキュメントID: ${doc.id} ----- 名前: ${doc.data()['name']}');
      });
    } catch (e) {
      print('ユーザー情報の取得失敗　===== $e');
    }
  }
}
