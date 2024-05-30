import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:undp/data.dart';
import 'package:undp/main.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/shopping.jpg",),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaY: 4, sigmaX: 4),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  )
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 37.5),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/vege.gif"))
                  ),
                )),
                Text("Teba Market", style: TextStyle(color: Colors.red[900], fontSize: 30, fontWeight: FontWeight.bold),),
                Text("Shop Online", style: TextStyle(color: Colors.red[900], fontSize: 18),),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 574,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25,),
                        Text("   "
                            "Sign Up", style: TextStyle(
                          color: Colors.red[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 10,),
                        createTextField("Name", Icon(Icons.person, color: Colors.grey[700],), Icon(Icons.add, color: Colors.transparent,)),
                        createTextField("+92 Phone number", Icon(Icons.call_outlined, color: Colors.grey[700],), Icon(Icons.add, color: Colors.transparent,)),
                        createTextField("Password", Icon(Icons.lock, color: Colors.grey[700],), Icon(Icons.remove_red_eye, color: Colors.grey[700],)),
                        createTextField("Confirm Password", Icon(Icons.lock, color: Colors.grey[700],), Icon(Icons.remove_red_eye, color: Colors.grey[700],)),
                        SizedBox(height: 5,),
                       Padding(
                         padding: const EdgeInsets.only(left: 25),
                         child: SizedBox(height: 20,
                         child: Text("Area",style: TextStyle(fontWeight: FontWeight.bold),),),
                       ),
                       createSimpleTextFiels("...", Icon(Icons.arrow_drop_down, color: Colors.grey[700],),),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: SizedBox(height: 20,
                            child: Text("Adress",style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                        createSimpleTextFiels("...", Icon(Icons.arrow_drop_down, color: Colors.grey[700],),),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: SizedBox(height: 20,
                            child: Text("Number/Building Number/Door Number",style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                        createSimpleTextFiels("00/0/00", Icon(Icons.arrow_drop_down, color: Colors.grey[700],),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const clone()),
                          );
                        },
                       child: CreateBtn(Colors.red.shade900, Colors.white, "LogIn"),)
                      ],
                  
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
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
}
