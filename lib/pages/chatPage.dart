import 'package:flutter/material.dart';

class chatPage extends StatefulWidget{
  @override
  createState() => _chatPage();

}

class _chatPage extends State< chatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xff55879F),
          title: Row(

            children: [
              Padding(
                padding: EdgeInsets.only(right: 10,),
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/On8w8IneXU.jpg"),
                  radius: 20,

                ),
              ),
              Column(
                children: [

                  Padding(
                    padding: EdgeInsets.only(right: 55),
                    child: Text("Mom" ,style: TextStyle(
                      fontSize:19,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                  ),
                SizedBox(height: 2,),
                Text("last seen recently" ,style: TextStyle(
                  fontSize:13,
                  fontWeight:FontWeight.w500,
                  color: Colors.white60,
                ),
                  ),

                ],
              ),
            ],
          ),



          actions: [
      Icon(Icons.call,color: Colors.white,),
            SizedBox(width: 16,),
            Icon(Icons.more_vert,color: Colors.white,),
            SizedBox(width: 16,),
          ],
        ),
body: Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage("https://i.pinimg.com/736x/3d/8c/2f/3d8c2f2c82c1c9ef1e27be645cd1aa17.jpg"),
   fit: BoxFit.cover,
    )

  ),
height: MediaQuery.of(context).size.height,
  width:MediaQuery.of(context).size.width,
  child: Stack(
    children: [
      ListView(),
      Align(
        alignment: Alignment.bottomCenter,
        child: Row(

          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: "Message",
                    prefixIcon: Icon(Icons.emoji_emotions,color: Colors.grey,),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.attach_file,color: Colors.grey,),
                          SizedBox(width: 16,),
                          Padding(
                              padding: EdgeInsets.only(right: 9),
                              child: Icon(Icons.camera_alt_outlined,color: Colors.grey,)),
                        ],
                      ),
                      contentPadding: EdgeInsets.all(5),
border: InputBorder.none,
                  ),
                ),
              ),
            )
          ],
        ),
      )
    ],
  ),
    ),
    );
  }
}