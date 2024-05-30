import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:undp/data.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart",
        style: TextStyle(
          color: Colors.black,
          backgroundColor: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
    body: Column(
        children: [
        Container(
          height: 150,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                createTextsmall("Subtotal:", Colors.black54),
                  createTextsmall("5.98 EUR", Colors.black54),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  createTextsmall("Delivery:", Colors.black54),
                  createTextsmall("7 EUR", Colors.black54),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  createTextnormal("Total:", Colors.black54),
                  createTextnormal("12.98 EUR", Colors.red.shade900),
                ],
              ),
              CreateBtn(Colors.red.shade900, Colors.white, "Complete order")
            ],
          ),
        ),
          Divider(color: Colors.grey[100],),
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            height: 150,
            width: 320,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey.shade100,),
            ),
            child: ListTile(
              isThreeLine: true,
              leading: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                child: Container(color: Colors.black54,)
               // Image(image: AssetImage("assets/zwan.jpg", ), fit: BoxFit.cover, width: 60, height: 250,)
              ),
              title: createTextsmall("Mortadella(zwan)-340g", Colors.red.shade900),
              subtitle: Text("Chicken Meat 340g \n2 x 2.99 EUR", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 10),),
              trailing: Icon(Icons.delete, color: Colors.red.shade900,),
            ),
          )
        ],
      ),
    );
  }
}
