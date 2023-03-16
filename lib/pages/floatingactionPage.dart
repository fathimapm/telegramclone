import 'package:flutter/material.dart';
import 'package:telegram/pages/addFloatingPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class clickedFloatingButton extends StatefulWidget{
  @override
  createState() => _clickedFloatingButtonState();

}

class _clickedFloatingButtonState extends State< clickedFloatingButton>{
 bool isSearching=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        title: !isSearching
          ?Text("New Message")
        :TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(

            hintText: "Search" ,
            hintStyle: TextStyle(fontSize: 20,color: Colors.white60),
border: InputBorder.none,


          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right:6),
              child:IconButton(icon:Icon(Icons.search_outlined,color: Colors.white,),
                onPressed: (){
                setState(() {
                  this.isSearching=!this.isSearching;
                });
                }),

          ),

          SizedBox(width: 16,),

          Padding(
              padding: EdgeInsets.only(right:12),
              child:

              Icon(Icons.sort_sharp)),

        ],

    ),
        floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff55879F),
    child:
    FaIcon(FontAwesomeIcons.userPlus  ) ,
   // Icon(Icons.add_reaction,),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> addFloatingPage()));
    },
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.group),
              title: Text("New Group"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("New Secret Chat"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.newspaper_rounded),
              title: Text("New Channel"),
              onTap: (){},
            ),

                ListTile(

                    title:Text("Sorted by last seen time",style: TextStyle(
                      fontSize:14,
                      fontWeight:FontWeight.w600,
                      color: Colors.black54,

                    ),),
                        tileColor: Colors.grey.shade200,
                ),
ListTile(
  contentPadding: EdgeInsets.only(top: 5,left: 2),
  title:Text("Afeefa" ,style: TextStyle(
    fontSize:19,
    fontWeight:FontWeight.bold,
  ),
  ),
  leading:
  CircleAvatar(
    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQAq1DhWEP1JB5jncJXWhnsqZzrn6W2GfUA&usqp=CAU"),
    radius: 40,

  ),
  subtitle: Text("last seen at 12:07 AM"),
),
            ListTile(
              contentPadding: EdgeInsets.only(top: 5,left: 2),
              title:Text("Mom" ,style: TextStyle(
                fontSize:19,
                fontWeight:FontWeight.bold,
              ),
              ),
              leading:
              CircleAvatar(
                backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
                radius: 40,

              ),
              subtitle: Text("last seen at 01:10 AM"),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(top: 5,left: 2),
              title:Text("Arif" ,style: TextStyle(
                fontSize:19,
                fontWeight:FontWeight.bold,
              ),
              ),
              leading:
              CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTJo-ppPlm-c2MpJO2CZncFZ5wBezUTEnmg&usqp=CAU"),
                radius: 40,

              ),
              subtitle: Text("last seen within a month"),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(top: 5,left: 2),
              title:Text("kenza" ,style: TextStyle(
                fontSize:19,
                fontWeight:FontWeight.bold,
              ),
              ),
              leading:
              CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPsRT61C9lyDsJMwoGdispvl_a1PPObghKww&usqp=CAU"),
                radius: 40,

              ),
              subtitle: Text("last seen yesterday at 8:38 PM"),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(top: 5,left: 2),
              title:Text("Hind" ,style: TextStyle(
                fontSize:19,
                fontWeight:FontWeight.bold,
              ),
              ),
              leading:
              CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX22eSvpPltCaNErraPGQImFJyPHTTychsgg&usqp=CAU"),
                radius: 40,

              ),
              subtitle: Text("last seen Oct 07 at 09:30 PM"),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(top: 5,left: 2),
              title:Text("Ashif muhammed" ,style: TextStyle(
                fontSize:19,
                fontWeight:FontWeight.bold,
              ),
              ),
              leading:
              CircleAvatar(
                child: Text("Am",style: TextStyle(color: Colors.white,fontSize: 25),),
                backgroundColor: Colors.cyan,
                //backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
                radius: 40,

              ),
              subtitle: Text("last seen at Oct 02 at 3:18 PM"),
            ),

//Text("Sorted by last seen time"),
          ],
        ),
      ),
    );
  }
}