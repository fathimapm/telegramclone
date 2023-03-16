import 'package:flutter/material.dart';
import 'package:telegram/pages/homePage.dart';
import 'package:telegram/pages/homePage.dart';
class  addFloatingPage extends StatefulWidget{
  @override
  createState() => _addFloatingPage();
}

class _addFloatingPage extends State< addFloatingPage> {




  @override
  Widget build(BuildContext context) {



        return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:  Color(0xff55879F),
    title:Text("Add Contact"),

        actions:[
          IconButton(icon:Icon(Icons.check_outlined,color: Colors.white,),
            onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder:(context)=> HomePage()));
            },
          )
        ],



      ),
      body:



            Padding(
          padding: EdgeInsets.only(left:16,top:32),

        child: Column(

        children: [




          Container(
            width: 550,
            child: Row(
            children: [
            CircleAvatar(
            backgroundColor: Colors.blue.shade600,
            radius: 40,
            ),
            SizedBox(width: 20,),
            Container(
              width: 250,
              child: Column(

children: [

     TextFormField(

                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "First name" ,
                    hintStyle: TextStyle(fontSize: 18,),


                  ),
                ),
  TextFormField(

    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      hintText: "Last name (optional)" ,
      hintStyle: TextStyle(fontSize: 18,),


    ),
  ),


],
              ),
            )
                ]
            ),
          ),
          TextFormField(

            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(

              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('India',style: TextStyle(fontSize: 18,color: Colors.black),),
                  )
                ],),


            ),

          ),
          SizedBox(height: 15,),

         TextField(



          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('+91',style: TextStyle(fontSize: 18,color: Colors.black),),
                )
              ],),


            hintText: "-  -  -  -  -    -  -  -  -  -",
hintStyle: TextStyle(fontSize: 18,)




            ),
          ),

        ]
        ),


    )

    );
  }
}