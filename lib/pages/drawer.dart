import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DrawerScreen extends StatefulWidget{
  @override
  createState() => _DrawerScreenState();

}

class _DrawerScreenState extends State< DrawerScreen>{
  @override
  Widget build(BuildContext context) {
    return Drawer(

child:
  ListView(
    children:[

    UserAccountsDrawerHeader(
        decoration: BoxDecoration(

            color: Colors.blueGrey
        ),

        accountName:  Text("Fathima Razak",style:GoogleFonts.roboto(fontSize: 15,

            fontWeight: FontWeight.w500
          ),
        ),


        currentAccountPicture:Padding(
          padding: EdgeInsets.only(top:12,bottom:6),

          child: CircleAvatar(
          backgroundImage: NetworkImage("https://media.glamour.com/photos/58a5c6744c169f6448949a95/6:7/w_390,h_455,c_limit/amani-muslimgirl.com_.png"),
          radius: 30,

      ),
        ),

        accountEmail:Row(
          children: [

              Text("+91 9048165269",style: TextStyle(fontSize: 12,

                  fontWeight: FontWeight.w400,
                color: Colors.white60

              )),
  SizedBox(width: 150,),

           Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,)
          ],
        ),
  otherAccountsPictures: [
      Padding(
          padding: EdgeInsets.only(top: 12),
          child: Icon(Icons.brightness_2,color: Colors.white,))
  ],
  ),


  ListTile(
    leading:

    Icon(Icons.group),
    title: Text("New Group"),
    onTap: (){},
  ),
      ListTile(
        leading:
        FaIcon(FontAwesomeIcons.user),
        //Icon(Icons.call_sharp),
        title: Text("Contacts"),
        onTap: (){},
      ) ,
      ListTile(
        leading: Icon(Icons.call_sharp),
        title: Text("Calls"),
        onTap: (){},
      ),
      ListTile(
        leading:
        FaIcon(FontAwesomeIcons.streetView),
        //Icon(Icons.call),
        title: Text("People Nearby"),
        onTap: (){},
      ),
      ListTile(
        leading: Icon(Icons.bookmark_border_sharp),
        title: Text("Saved Messages"),
        onTap: (){},
      ),
      ListTile(
        leading:
        FaIcon(FontAwesomeIcons.gear),
    //Icon(Icons.settings),
        title: Text("Settings"),
        onTap: (){},
      ),
      Divider( indent: 1,endIndent: 1,color: Colors.grey,),
      ListTile(
        leading:
        FaIcon(FontAwesomeIcons.userPlus),
       // Icon(Icons.add_moderator_rounded),
        title: Text("Invite Friends"
       ),
        onTap: (){},
      ),
      ListTile(
        leading: Icon(Icons.help_outline_outlined),
        title: Text("Telegram Features"),
        onTap: (){},
      ),
  ],


      ),


    );
        }
}