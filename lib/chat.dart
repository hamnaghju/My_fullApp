import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 8,
          itemBuilder: (context, index){
        return ListTile(
          minVerticalPadding: double.minPositive,
          horizontalTitleGap: double.minPositive,
          contentPadding: EdgeInsets.zero,
          leading: Positioned(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/celine,jpg"),
            ),
          ),
          title: Text("+92 345678942",
          style: TextStyle(
            color: Colors.white
          ),),
          subtitle: Row(
            children: [
              Icon(Icons.arrow_back_ios_outlined, color: Colors.white70,),
              SizedBox(height: 7,),
              Text("jcusgdadgbJJJ",
             style: TextStyle(
               color: Colors.white70
             ), ),
            ],
          ),
          titleAlignment: ListTileTitleAlignment.titleHeight,
          trailing: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text("Yesturday",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white70,

            ),),
          ),
        );
      }),
    );
  }
}
