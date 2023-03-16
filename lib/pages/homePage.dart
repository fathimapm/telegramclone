import 'package:flutter/material.dart';
import 'package:telegram/pages/drawer.dart';
import 'package:telegram/pages/floatingactionPage.dart';
import 'package:telegram/pages/searchPage.dart';
import 'package:telegram/pages/chatPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        appBar: AppBar(
elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        title:Text("Telegram"),

    actions:[
    IconButton(icon:Icon(Icons.search_outlined,color: Colors.white,),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=> searchPage()));
      }),

    ],



        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff55879F),
          child: Icon(Icons.create,),
          onPressed: (){
Navigator.push(context, MaterialPageRoute(builder:(context)=> clickedFloatingButton()));
          },

        ),
        drawer: DrawerScreen(

        ),
        body:

        SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
contentPadding: EdgeInsets.only(top: 5,left: 2),



    title:

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

                  Text("Saved Messages" ,style: TextStyle(
                  fontSize:19,
                  fontWeight:FontWeight.bold,
                  ),
                 ),

       Row(

               children:[

                //Icon(Icons.check_outlined,),

                   Padding(
                     padding: EdgeInsets.only(right: 10),
                   child: Text("11.00 pm",style:TextStyle(
    fontSize:14,
    fontWeight:FontWeight.w500)),
                 ),

  ],
       ),

],
              ),


    leading:
    CircleAvatar(
      child: Icon(Icons.bookmark_border,color: Colors.white,size: 37,),
     backgroundColor: Color(0xff55879F),
     // backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
      radius:40,

      ),

    subtitle: Padding(
      padding: EdgeInsets.only(right: 10,top: 5),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("marsh music.mp3"),

            ],
          ),
    ),


    ),
              Divider( indent: 1,endIndent: 1,color:Colors. black,),
              ListTile(
                contentPadding: EdgeInsets.only(top: 5,left: 2),



                title:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Mom" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),

                    Row(

                      children:[

                       // Icon(Icons.check_outlined,),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("10.30 pm",style:TextStyle(
                              fontSize:14,
                              fontWeight:FontWeight.w500)),
                        ),

                      ],
                    ),

                  ],
                ),


                leading:
                CircleAvatar(
                  backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
                    radius: 40,

                ),

                subtitle: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Good night"),
                      Container(child: Padding(
                          padding: EdgeInsets.all((5)),
                          child: Text("2",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 14),)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,

                        ),

                      ),
                    ],
                  ),
                ),
onTap: (){
  Navigator.push(context, MaterialPageRoute(builder:(context)=> chatPage()));
},

              ),
              Divider( indent: 1,endIndent: 1,color: Colors.grey.shade300,),
              ListTile(
                contentPadding: EdgeInsets.only(top: 5,left: 2),



                title:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Arif" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),

                    Row(

                      children:[

                        // Icon(Icons.check_outlined,),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("8.16 pm",style:TextStyle(
                              fontSize:14,
                              fontWeight:FontWeight.w500)),
                        ),

                      ],
                    ),

                  ],
                ),


                leading:
                CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTJo-ppPlm-c2MpJO2CZncFZ5wBezUTEnmg&usqp=CAU"),
                  radius: 40,

                ),

                subtitle: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("done?"),
                      Container(child: Padding(
                          padding: EdgeInsets.all((5)),
                          child: Text("1",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,fontSize: 14),)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,

                        ),

                      ),
                    ],
                  ),
                ),

              ),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5,left: 2),



            title:

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("kenza" ,style: TextStyle(
                  fontSize:19,
                  fontWeight:FontWeight.bold,
                ),
                ),

                Row(

                  children:[

                    Icon(Icons.check_outlined,color: Colors.green,),

                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text("1:00 pm",style:TextStyle(
                          fontSize:14,
                          fontWeight:FontWeight.w500)),
                    ),

                  ],
                ),

              ],
            ),


            leading:
            CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPsRT61C9lyDsJMwoGdispvl_a1PPObghKww&usqp=CAU"),
              radius: 40,

            ),

            subtitle: Text("Okay"),

          ),
              Divider( indent: 1,endIndent: 1,color: Colors.black,),
              ListTile(
                contentPadding: EdgeInsets.only(top: 5,left: 2),



                title:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Hind" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),

                    Row(

                      children:[

                        Icon(Icons.check_outlined,color: Colors.green,),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("9.00 am",style:TextStyle(
                              fontSize:14,
                              fontWeight:FontWeight.w500)),
                        ),

                      ],
                    ),

                  ],
                ),


                leading:
                CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX22eSvpPltCaNErraPGQImFJyPHTTychsgg&usqp=CAU"),
                  radius: 40,

                ),

                subtitle: Text("Yeah. I did yesterday"),

              ),
              Divider( indent: 1,endIndent: 1,color: Colors.grey,),
              ListTile(
                contentPadding: EdgeInsets.only(top: 5,left: 2),



                title:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Ashif muhammed" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),

                    Row(

                      children:[

                       // Icon(Icons.check_outlined,),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("Tue",style:TextStyle(
                              fontSize:14,
                              fontWeight:FontWeight.w500)),
                        ),

                      ],
                    ),

                  ],
                ),


                leading:
                CircleAvatar(
                  child: Text("Am",style: TextStyle(color: Colors.white,fontSize: 25),),
                backgroundColor: Colors.cyan,
                //  backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
                  radius: 40,

                ),

                subtitle: Text("Yes"),

              ),
              Divider( indent: 1,endIndent: 1,color: Colors.grey.shade300,),
              ListTile(
                contentPadding: EdgeInsets.only(top: 5,left: 2),



                title:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Afeefa" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),

                    Row(

                      children:[

                        Icon(Icons.check_outlined,color: Colors.green,),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("11/10",style:TextStyle(
                              fontSize:14,
                              fontWeight:FontWeight.w500)),
                        ),

                      ],
                    ),

                  ],
                ),


                leading:
                CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQAq1DhWEP1JB5jncJXWhnsqZzrn6W2GfUA&usqp=CAU"),
                  radius: 40,

                ),

                subtitle: Text("No"),

              ),
              Divider( indent: 1,endIndent: 1,color: Colors.black,),
              ListTile(
                contentPadding: EdgeInsets.only(top: 5,left: 2),



                title:

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Aswathi" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),

                    Row(

                      children:[

                        Icon(Icons.check_outlined,color: Colors.green,),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("9/10",style:TextStyle(
                              fontSize:14,
                              fontWeight:FontWeight.w500)),
                        ),

                      ],
                    ),

                  ],
                ),


                leading:
                CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDH6aDnrfQCmqkyBmDFgxnWQcFE72m2ytMPg&usqp=CAU"),
                  radius: 40,

                ),

                subtitle: Text("I dont know"),

              ),
              Divider( indent: 1,endIndent: 1,color: Colors.black,),

],
    ),
        ),
      );
  }
  }