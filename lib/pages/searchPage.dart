import 'package:flutter/material.dart';
class  searchPage extends StatefulWidget{
  @override
  createState() => _searchPage();
}

class _searchPage extends State<searchPage> {


  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
        elevation: 0.0,
        backgroundColor:  Color(0xff55879F),
          title: TextField(
          keyboardType: TextInputType.text,
    decoration: InputDecoration(

    hintText: "Search" ,
    hintStyle: TextStyle(fontSize: 20,color: Colors.white60),
    border: InputBorder.none,
        )
    )
        ),
            body: Padding(
              padding: EdgeInsets.only(top:9),
              child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left:16),
            child: Row(
             children: [
                 Column(
                  children: [
                   CircleAvatar(
                     backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTJo-ppPlm-c2MpJO2CZncFZ5wBezUTEnmg&usqp=CAU"),
                    // backgroundColor: Colors.blue.shade600,
                     radius: 30,
                   ),
                    SizedBox(height: 5,),
                    Text("Arif"),
      ]
                 ),
    SizedBox(width: 25,),
    Column(
      children: [
    CircleAvatar(
      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzQAq1DhWEP1JB5jncJXWhnsqZzrn6W2GfUA&usqp=CAU"),
    //backgroundColor: Colors.blue.shade600,
      radius: 30,
    ),
        SizedBox(height: 5,),
    Text("Afeefa"),
    ]
    ),
               SizedBox(width: 25,),
               Column(
                   children: [
                     CircleAvatar(
                       backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
                      // backgroundColor: Colors.blue.shade600,
                       radius: 30,
                     ),
                     SizedBox(height: 5,),
                     Text("Mom"),
                   ]
               ),
               SizedBox(width: 25,),
             ],
            ),
          ),
          SizedBox(height: 9,),
          Container(
            height: 45,
            child: ListTile(

              title:Row(
                children: [
                  Text("Recent",style: TextStyle(
                    fontSize:14,
                    fontWeight:FontWeight.w600,
                    color: Colors.black26,

                  ),),
                  SizedBox(width: 280,),
                  Text("Clear All",style: TextStyle(
                    fontSize:14,
                    fontWeight:FontWeight.w600,
                    color: Colors.black26,

                  ),),
                ],
              ),

              tileColor: Colors.grey.shade200,
            ),
          ),
      ListTile(
        contentPadding: EdgeInsets.only(top: 5,left: 2),



        title:





            Text("Saved Messages" ,style: TextStyle(
              fontSize:19,
              fontWeight:FontWeight.bold,
            ),
            ),
            leading:
            CircleAvatar(
              child: Icon(Icons.bookmark_border,color: Colors.white,size: 37,),
              backgroundColor: Color(0xff55879F),
             // backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
              radius: 40,

            ),



            ),
          Divider(color: Colors.grey.shade400,),
          ListTile(
            contentPadding: EdgeInsets.only(top: 5,left: 2),



            title:
      Text("Arif" ,style: TextStyle(
        fontSize:19,
        fontWeight:FontWeight.bold,
      ),
      ),
      leading:
      CircleAvatar(
        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmTJo-ppPlm-c2MpJO2CZncFZ5wBezUTEnmg&usqp=CAU"),
        radius: 40,

      ),
subtitle: Text("last seen recently"),


    ),
      ]
    )
    )
    );
  }
}