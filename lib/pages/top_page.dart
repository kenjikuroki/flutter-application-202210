import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/talk_room.dart';
import '../model/user.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    //インスタンス
    User(
        name: '田中',
        uid: 'abc',
        imagePath:
            'http://illustrain.com/img/work/2016/illustrain09-neko14.png',
        lastMessage: 'こんにちは'),
    User(
        name: '佐藤',
        uid: 'def',
        imagePath: 'https://illust-stock.com/wp-content/uploads/inu.png',
        lastMessage: 'ありがとう'),
  ];
////////////ページの中身//////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//////////アップバー//////////////////
      appBar: AppBar(
        title: const Text('チャットアプリ'),
      ),
////////////////////////////////////
      body: ListView.builder(
          itemCount: userList.length, //インスタンスのユーザーの数で変わる
          itemBuilder: (context, index) {
            //////// 画面遷移ボタン /////////////////
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TalkRoomPage(userList[index].name)));
              },
//////////////////////////////////////////////
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), //左右にパディング
                      child: CircleAvatar(
                        radius: 30, //大きさを変えるプロパティ
                        backgroundImage: userList[index].imagePath == null
                            ? null
                            : NetworkImage(userList[index].imagePath!),
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, //左つめにするプロパティ
                      mainAxisAlignment: MainAxisAlignment.center, //真ん中寄せプロパティ
                      children: [
                        Text(
                          userList[index].name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(userList[index].lastMessage,
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
