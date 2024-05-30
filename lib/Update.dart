import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class update extends StatefulWidget {
  const update({super.key});

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("   Status",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23
                  ),),
                  IconButton(onPressed: (){},
                      icon: Icon(
                        Icons.more_vert_sharp,
                        color: Colors.white70,)),
                ],
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              child: ListTile(
                leading: Stack(
                  children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 22,
                    child: Container(
                      height: 1,
                      width: 1,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      child: IconButton(onPressed: (){},
                          icon: Icon(Icons.add_box_sharp,
                            color: Colors.green[800],),
                      ),
                    ),
                  )]
                ),
                title: Text("My Status",
                style: TextStyle(color: Colors.white, fontSize: 20),),
                subtitle: Text("Tap to add status update",
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 15
                ),),
              ),
            ),
            Text("   Recent updates",
            style: TextStyle(
              color: Colors.white38,
              fontSize: 18
            ),),
            ListTile(
             leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
              title: Text("Hamna khan",
                style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text("Yesturday",
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15
                ),),
            ),
           ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
              title: Text("Raheela",
                style: TextStyle(color: Colors.white, fontSize: 20),),
              subtitle: Text("Yesturday",
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15
                ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("   Viwed updates",
                  style: TextStyle(
                      color: Colors.white38,
                      fontSize: 15),),
                IconButton(onPressed: (){},
                  icon: Icon(Icons.keyboard_arrow_down_sharp,
                    color: Colors.white38,),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.white38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("  Channels",style: TextStyle(
                  color: Colors.white, fontSize: 25
                ),),
                IconButton(onPressed: (){},
                  icon: Icon(Icons.add,
                    color: Colors.white,),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 60,
              width: 360,
              child: Text("Stay updated on topics that matter to you. Find channels to follow below.",
              style: TextStyle(
                color: Colors.white38
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
