import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';

mixin UserFirestore {
  static final FirebaseFirestore _firebaseFirestoreInstance =
      FirebaseFirestore.instance;
  static final _userCollection = _firebaseFirestoreInstance.collection('user');

  static Future<void> createUser() async {
    try {
      _userCollection.add({
        'name': '名無し',
        'image_path':
            'http://illustrain.com/img/work/2016/illustrain09-neko14.png',
      });

      print('アカウント作成完了');
    } catch (e) {
      print('アカウント作成失敗　==== $e');
    }
  }
}
