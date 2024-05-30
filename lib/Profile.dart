import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
      centerTitle: true,
      title: Text("Profile",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),)
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red[900],
            child: ListTile(
              leading: Icon(Icons.person, size: 50, color: Colors.white,),
              title: Text("Amir",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
              subtitle: Text("03311226789",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
         createList("settings", Icon(Icons.settings, color: Colors.red[900], size: 25,),),
        createList2("Notifications", Icon(Icons.notifications, color: Colors.red[900], size: 25,), Icon(Icons.toggle_off, color: Colors.red[900], size: 48,), ),
          createList("My orders", Icon(Icons.shopping_cart_outlined, color: Colors.red[900], size: 25,),),
          createList("My balance (coupon)", Icon(Icons.monetization_on_outlined, color: Colors.red[900], size: 25,),),
          createList("Language", Icon(Icons.language, color: Colors.red[900], size: 25,),),
          createList("Privacy policy", Icon(Icons.privacy_tip_rounded, color: Colors.red[900], size: 25,),),
          createList("App usage", Icon(Icons.document_scanner_outlined, color: Colors.red[900], size: 25,),),
          createList("Contact us", Icon(Icons.email_outlined, color: Colors.red[900], size: 25,),),
        ],
      ),
    );
  }
}
createList(String text, Icon icon){
  return  ListTile(
    leading: icon,
    title: Text(text,
      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
  );
}

createList2(String text, Icon icon, Icon Ticon){
  return  ListTile(
    leading: icon,
    title: Text(text,
      style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
    trailing: Ticon,
  );
}
