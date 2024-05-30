import 'package:flutter/material.dart';
import 'package:undp/Profile.dart';
import 'package:undp/cart.dart';
import 'package:undp/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black26,
          body: cart(),
        ));
  }
}



class clone extends StatefulWidget {
  const clone({super.key});

  @override
  State<clone> createState() => _cloneState();
}

class _cloneState extends State<clone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200,),
          Text("    Login", style: TextStyle(
              color: Colors.red[800],
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 30,),
          createTextField("+92 Phone number", Icon(Icons.call_outlined, color: Colors.grey[700],), Icon(Icons.invert_colors, color: Colors.transparent,)),
          createTextField("Password",Icon(Icons.lock, color: Colors.grey[700],),Icon(Icons.remove_red_eye_sharp, color: Colors.grey[700],), ),
        SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: Text("Forget Password?",
              style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 40,),
         GestureDetector(
           onTap: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const profile()),
             );
           },
           child: CreateBtn(Colors.red.shade900, Colors.white, "Login"),),
      GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const signin()),
          );
        },
        child:CreateBtn(Colors.transparent, Colors.red.shade900, "Sign Up"),),
          SizedBox(height: 160,),
          Center(
            child: Text("Login as a Guest",
            style: TextStyle(
              color: Colors.red[900],
              fontSize: 15,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }

  createTextField(String inputText, Icon preicon, Icon suficon) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      padding: EdgeInsets.all(10),
      height: 40,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white54,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.transparent
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.transparent
              ),
            ),
            contentPadding: EdgeInsets.all(9),
            hintText: inputText,
            //"+92 Phone number",
            hintStyle: TextStyle(
              color: Colors.grey[700],
            ),
            prefixIcon: preicon,
          suffixIcon: suficon,
        ),
      ),
    );
  }
}

CreateBtn(Color splashcolor, Color textcolor, String text){
  return  Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
    height: 35,
    width: 360,
    decoration: BoxDecoration(
        color: splashcolor,
      border: Border.all(color: Colors.red, width: 2),
      borderRadius: BorderRadius.circular(5)
    ),
    child: Center(
      child: Text(text,
        style: TextStyle(color: textcolor,
            fontWeight: FontWeight.bold, fontSize: 18),),
    ),
  );
}
