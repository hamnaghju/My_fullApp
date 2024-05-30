

import 'dart:ui';

import 'package:flutter/material.dart';

const Textdata = TextStyle(color: Colors.white, fontSize: 20, );
const Textdatas = TextStyle(color: Colors.white, fontSize: 18, );
const textdata = TextStyle(color: Colors.grey, fontSize: 15);

createTextField(String inputText, Icon preicon, Icon suficon) {
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
    padding: EdgeInsets.all(10),
    height: 40,
    width: 380,
    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: BorderRadius.circular(8)
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

createSimpleTextFiels(String inputText, Icon suficon){
  return Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
    padding: EdgeInsets.all(10),
    height: 40,
    width: 380,
    decoration: BoxDecoration(
      color: Colors.white54,
      borderRadius: BorderRadius.circular(8)
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
        hintStyle: TextStyle(
          color: Colors.grey[700],
        ),
        suffixIcon: suficon,
      ),
    ),
  );
}

CreateBtn(Color splashcolor, Color textcolor, String text){
  return  Container(
    margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
    height: 32,
    width: 360,
    decoration: BoxDecoration(
        color: splashcolor,
        border: Border.all(color: Colors.red.shade900, width: 2),
        borderRadius: BorderRadius.circular(5)
    ),
    child: Center(
      child: Text(text,
        style: TextStyle(color: textcolor,
            fontWeight: FontWeight.bold, fontSize: 18),),
    ),
  );
}

createTextsmall(String smalltext, Color smalltextcolor,){
  return  Padding(
    padding: EdgeInsets.only(left: 10,top: 8),
    child: Text(smalltext, style: TextStyle(color: smalltextcolor, fontWeight: FontWeight.bold ),),
  );
}

createTextnormal(String normaltext, Color normaltextcolor,){
  return  Padding(
    padding: EdgeInsets.only(left: 10, top: 8),
    child: Text(normaltext, style: TextStyle(color: normaltextcolor, fontWeight: FontWeight.bold , fontSize: 17),),
  );
}